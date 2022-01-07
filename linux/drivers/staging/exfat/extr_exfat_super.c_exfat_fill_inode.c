
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct inode {int i_generation; int i_blocks; int i_atime; int i_ctime; int i_mtime; TYPE_2__* i_mapping; int * i_fop; int * i_op; void* i_mode; int i_gid; int i_uid; int i_sb; } ;
struct fs_info_t {int cluster_size; } ;
struct file_id_t {int dummy; } ;
struct TYPE_4__ {int fs_gid; int fs_uid; } ;
struct exfat_sb_info {TYPE_1__ options; struct fs_info_t fs_info; } ;
struct dir_entry_t {int Attr; int AccessTimestamp; int CreateTimestamp; int ModifyTimestamp; int Size; int NumSubdirs; } ;
typedef int loff_t ;
struct TYPE_6__ {int mmu_private; int * target; scalar_t__ i_pos; int fid; } ;
struct TYPE_5__ {scalar_t__ nrpages; int * a_ops; } ;


 int ATTR_SUBDIR ;
 int ATTR_SYMLINK ;
 TYPE_3__* EXFAT_I (struct inode*) ;
 struct exfat_sb_info* EXFAT_SB (int ) ;
 int INC_IVERSION (struct inode*) ;
 int exfat_aops ;
 int exfat_dir_inode_operations ;
 int exfat_dir_operations ;
 int exfat_file_inode_operations ;
 int exfat_file_operations ;
 void* exfat_make_mode (struct exfat_sb_info*,int,int) ;
 int exfat_save_attr (struct inode*,int) ;
 int exfat_symlink_inode_operations ;
 int exfat_time_fat2unix (int *,int *) ;
 int ffsReadStat (struct inode*,struct dir_entry_t*) ;
 int get_seconds () ;
 int i_size_read (struct inode*) ;
 int i_size_write (struct inode*,int ) ;
 int memcpy (int *,struct file_id_t*,int) ;
 int set_nlink (struct inode*,int ) ;

__attribute__((used)) static int exfat_fill_inode(struct inode *inode, struct file_id_t *fid)
{
 struct exfat_sb_info *sbi = EXFAT_SB(inode->i_sb);
 struct fs_info_t *p_fs = &(sbi->fs_info);
 struct dir_entry_t info;

 memcpy(&(EXFAT_I(inode)->fid), fid, sizeof(struct file_id_t));

 ffsReadStat(inode, &info);

 EXFAT_I(inode)->i_pos = 0;
 EXFAT_I(inode)->target = ((void*)0);
 inode->i_uid = sbi->options.fs_uid;
 inode->i_gid = sbi->options.fs_gid;
 INC_IVERSION(inode);
 inode->i_generation = get_seconds();

 if (info.Attr & ATTR_SUBDIR) {
  inode->i_generation &= ~1;
  inode->i_mode = exfat_make_mode(sbi, info.Attr, 0777);
  inode->i_op = &exfat_dir_inode_operations;
  inode->i_fop = &exfat_dir_operations;

  i_size_write(inode, info.Size);
  EXFAT_I(inode)->mmu_private = i_size_read(inode);
  set_nlink(inode, info.NumSubdirs);
 } else if (info.Attr & ATTR_SYMLINK) {
  inode->i_generation |= 1;
  inode->i_mode = exfat_make_mode(sbi, info.Attr, 0777);
  inode->i_op = &exfat_symlink_inode_operations;

  i_size_write(inode, info.Size);
  EXFAT_I(inode)->mmu_private = i_size_read(inode);
 } else {
  inode->i_generation |= 1;
  inode->i_mode = exfat_make_mode(sbi, info.Attr, 0777);
  inode->i_op = &exfat_file_inode_operations;
  inode->i_fop = &exfat_file_operations;
  inode->i_mapping->a_ops = &exfat_aops;
  inode->i_mapping->nrpages = 0;

  i_size_write(inode, info.Size);
  EXFAT_I(inode)->mmu_private = i_size_read(inode);
 }
 exfat_save_attr(inode, info.Attr);

 inode->i_blocks = ((i_size_read(inode) + (p_fs->cluster_size - 1))
    & ~((loff_t)p_fs->cluster_size - 1)) >> 9;

 exfat_time_fat2unix(&inode->i_mtime, &info.ModifyTimestamp);
 exfat_time_fat2unix(&inode->i_ctime, &info.CreateTimestamp);
 exfat_time_fat2unix(&inode->i_atime, &info.AccessTimestamp);

 return 0;
}
