
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct super_block {int dummy; } ;
struct inode {unsigned long i_ino; struct super_block* i_sb; } ;
struct fs_info_t {scalar_t__ vol_type; } ;
struct TYPE_4__ {int dentry; } ;
struct file {TYPE_1__ f_path; } ;
struct bd_info_t {int sector_size_bits; } ;
struct exfat_sb_info {struct bd_info_t bd_info; struct fs_info_t fs_info; } ;
struct dir_entry_t {int Attr; int * Name; int ShortName; } ;
struct dir_context {int pos; } ;
typedef int loff_t ;
struct TYPE_5__ {int rwoffset; scalar_t__ start_clu; int size; } ;
struct TYPE_6__ {TYPE_2__ fid; } ;


 int ATTR_SUBDIR ;
 int DENTRY_SIZE ;
 int DENTRY_SIZE_BITS ;
 int DOS_CUR_DIR_NAME ;
 int DOS_NAME_LENGTH ;
 int DOS_PAR_DIR_NAME ;
 int DT_DIR ;
 int DT_REG ;
 int EIO ;
 int ENOENT ;
 scalar_t__ EXFAT ;
 TYPE_3__* EXFAT_I (struct inode*) ;
 unsigned long EXFAT_ROOT_INO ;
 struct exfat_sb_info* EXFAT_SB (struct super_block*) ;
 int FFS_MEDIAERR ;
 int __lock_super (struct super_block*) ;
 int __unlock_super (struct super_block*) ;
 int dir_emit (struct dir_context*,int *,int ,unsigned long,int ) ;
 int dir_emit_dots (struct file*,struct dir_context*) ;
 struct inode* exfat_iget (struct super_block*,int) ;
 int ffsReadDir (struct inode*,struct dir_entry_t*) ;
 struct inode* file_inode (struct file*) ;
 int i_size_read (struct inode*) ;
 int iput (struct inode*) ;
 unsigned long iunique (struct super_block*,unsigned long) ;
 int memcmp (int ,int ,int ) ;
 unsigned long parent_ino (int ) ;
 int strlen (int *) ;

__attribute__((used)) static int exfat_readdir(struct file *filp, struct dir_context *ctx)
{
 struct inode *inode = file_inode(filp);
 struct super_block *sb = inode->i_sb;
 struct exfat_sb_info *sbi = EXFAT_SB(sb);
 struct fs_info_t *p_fs = &(sbi->fs_info);
 struct bd_info_t *p_bd = &(EXFAT_SB(sb)->bd_info);
 struct dir_entry_t de;
 unsigned long inum;
 loff_t cpos;
 int err = 0;

 __lock_super(sb);

 cpos = ctx->pos;

 if ((p_fs->vol_type == EXFAT) || (inode->i_ino == EXFAT_ROOT_INO)) {
  while (cpos < 2) {
   if (inode->i_ino == EXFAT_ROOT_INO)
    inum = EXFAT_ROOT_INO;
   else if (cpos == 0)
    inum = inode->i_ino;
   else
    inum = parent_ino(filp->f_path.dentry);

   if (!dir_emit_dots(filp, ctx))
    goto out;
   cpos++;
   ctx->pos++;
  }
  if (cpos == 2)
   cpos = 0;
 }
 if (cpos & (DENTRY_SIZE - 1)) {
  err = -ENOENT;
  goto out;
 }

get_new:
 EXFAT_I(inode)->fid.size = i_size_read(inode);
 EXFAT_I(inode)->fid.rwoffset = cpos >> DENTRY_SIZE_BITS;

 err = ffsReadDir(inode, &de);
 if (err) {



  if (err == FFS_MEDIAERR) {
   cpos += 1 << p_bd->sector_size_bits;
   cpos &= ~((1 << p_bd->sector_size_bits) - 1);
  }

  err = -EIO;
  goto end_of_dir;
 }

 cpos = EXFAT_I(inode)->fid.rwoffset << DENTRY_SIZE_BITS;

 if (!de.Name[0])
  goto end_of_dir;

 if (!memcmp(de.ShortName, DOS_CUR_DIR_NAME, DOS_NAME_LENGTH)) {
  inum = inode->i_ino;
 } else if (!memcmp(de.ShortName, DOS_PAR_DIR_NAME, DOS_NAME_LENGTH)) {
  inum = parent_ino(filp->f_path.dentry);
 } else {
  loff_t i_pos = ((loff_t)EXFAT_I(inode)->fid.start_clu << 32) |
    ((EXFAT_I(inode)->fid.rwoffset - 1) & 0xffffffff);
  struct inode *tmp = exfat_iget(sb, i_pos);

  if (tmp) {
   inum = tmp->i_ino;
   iput(tmp);
  } else {
   inum = iunique(sb, EXFAT_ROOT_INO);
  }
 }

 if (!dir_emit(ctx, de.Name, strlen(de.Name), inum,
        (de.Attr & ATTR_SUBDIR) ? DT_DIR : DT_REG))
  goto out;

 ctx->pos = cpos;
 goto get_new;

end_of_dir:
 ctx->pos = cpos;
out:
 __unlock_super(sb);
 return err;
}
