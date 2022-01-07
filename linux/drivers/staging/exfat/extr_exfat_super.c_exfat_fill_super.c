
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct super_block {int s_maxbytes; struct exfat_sb_info* s_fs_info; int s_root; int * s_export_op; int * s_op; int s_magic; int s_flags; } ;
struct inode {int i_ino; } ;
struct TYPE_5__ {int codepage; char* iocharset; } ;
struct TYPE_4__ {scalar_t__ vol_type; } ;
struct exfat_sb_info {TYPE_2__ options; void* nls_io; void* nls_disk; TYPE_1__ fs_info; int s_lock; } ;
struct TYPE_6__ {int i_pos; } ;


 long EINVAL ;
 long EIO ;
 int ENOMEM ;
 scalar_t__ EXFAT ;
 TYPE_3__* EXFAT_I (struct inode*) ;
 int EXFAT_ROOT_INO ;
 int EXFAT_SUPER_MAGIC ;
 int GFP_KERNEL ;
 int SB_NODIRATIME ;
 int SET_IVERSION (struct inode*,int) ;
 int d_make_root (struct inode*) ;
 int exfat_attach (struct inode*,int ) ;
 int exfat_export_ops ;
 int exfat_free_super (struct exfat_sb_info*) ;
 int exfat_hash_init (struct super_block*) ;
 long exfat_read_root (struct inode*) ;
 int exfat_sops ;
 int ffsMountVol (struct super_block*) ;
 int ffsUmountVol (struct super_block*) ;
 int insert_inode_hash (struct inode*) ;
 int iput (struct inode*) ;
 struct exfat_sb_info* kvzalloc (int,int ) ;
 void* load_nls (char*) ;
 int mutex_init (int *) ;
 struct inode* new_inode (struct super_block*) ;
 long parse_options (void*,int,int*,TYPE_2__*) ;
 int pr_err (char*,...) ;
 int sb_min_blocksize (struct super_block*,int) ;
 int setup_dops (struct super_block*) ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static int exfat_fill_super(struct super_block *sb, void *data, int silent)
{
 struct inode *root_inode = ((void*)0);
 struct exfat_sb_info *sbi;
 int debug, ret;
 long error;
 char buf[50];







 sbi = kvzalloc(sizeof(*sbi), GFP_KERNEL);
 if (!sbi)
  return -ENOMEM;
 mutex_init(&sbi->s_lock);
 sb->s_fs_info = sbi;
 sb->s_flags |= SB_NODIRATIME;
 sb->s_magic = EXFAT_SUPER_MAGIC;
 sb->s_op = &exfat_sops;
 sb->s_export_op = &exfat_export_ops;

 error = parse_options(data, silent, &debug, &sbi->options);
 if (error)
  goto out_fail;

 setup_dops(sb);

 error = -EIO;
 sb_min_blocksize(sb, 512);
 sb->s_maxbytes = 0x7fffffffffffffffLL;

 ret = ffsMountVol(sb);
 if (ret) {
  if (!silent)
   pr_err("[EXFAT] ffsMountVol failed\n");

  goto out_fail;
 }


 exfat_hash_init(sb);
 if (sbi->fs_info.vol_type != EXFAT) {
  error = -EINVAL;
  sprintf(buf, "cp%d", sbi->options.codepage);
  sbi->nls_disk = load_nls(buf);
  if (!sbi->nls_disk) {
   pr_err("[EXFAT] Codepage %s not found\n", buf);
   goto out_fail2;
  }
 }

 sbi->nls_io = load_nls(sbi->options.iocharset);

 error = -ENOMEM;
 root_inode = new_inode(sb);
 if (!root_inode)
  goto out_fail2;
 root_inode->i_ino = EXFAT_ROOT_INO;
 SET_IVERSION(root_inode, 1);

 error = exfat_read_root(root_inode);
 if (error < 0)
  goto out_fail2;
 error = -ENOMEM;
 exfat_attach(root_inode, EXFAT_I(root_inode)->i_pos);
 insert_inode_hash(root_inode);
 sb->s_root = d_make_root(root_inode);
 if (!sb->s_root) {
  pr_err("[EXFAT] Getting the root inode failed\n");
  goto out_fail2;
 }

 return 0;

out_fail2:
 ffsUmountVol(sb);
out_fail:
 if (root_inode)
  iput(root_inode);
 sb->s_fs_info = ((void*)0);
 exfat_free_super(sbi);
 return error;
}
