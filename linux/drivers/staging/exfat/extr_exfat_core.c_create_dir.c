
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct uni_name_t {int dummy; } ;
struct super_block {int dummy; } ;
struct inode {struct super_block* i_sb; } ;
struct fs_info_t {scalar_t__ vol_type; scalar_t__ root_dir; struct fs_func* fs_func; scalar_t__ cluster_size; } ;
struct fs_func {scalar_t__ (* alloc_cluster ) (struct super_block*,int,struct chain_t*) ;scalar_t__ (* init_dir_entry ) (struct super_block*,struct chain_t*,int,int ,scalar_t__,scalar_t__) ;scalar_t__ (* init_ext_entry ) (struct super_block*,struct chain_t*,scalar_t__,int,struct uni_name_t*,struct dos_name_t*) ;} ;
struct TYPE_3__ {scalar_t__ dir; int flags; scalar_t__ size; } ;
struct file_id_t {int flags; scalar_t__ start_clu; int hint_last_off; scalar_t__ rwoffset; int type; scalar_t__ size; int attr; scalar_t__ entry; TYPE_1__ dir; } ;
struct dos_name_t {int name_case; int name; } ;
struct chain_t {scalar_t__ dir; int flags; scalar_t__ size; } ;
typedef scalar_t__ s32 ;
struct TYPE_4__ {struct fs_info_t fs_info; } ;


 int ATTR_SUBDIR ;
 scalar_t__ CLUSTER_32 (int ) ;
 int DOS_CUR_DIR_NAME ;
 int DOS_NAME_LENGTH ;
 int DOS_PAR_DIR_NAME ;
 scalar_t__ EXFAT ;
 TYPE_2__* EXFAT_SB (struct super_block*) ;
 scalar_t__ FFS_FULL ;
 scalar_t__ FFS_MEDIAERR ;
 scalar_t__ FFS_SUCCESS ;
 int TYPE_DIR ;
 scalar_t__ clear_cluster (struct super_block*,scalar_t__) ;
 scalar_t__ find_empty_entry (struct inode*,struct chain_t*,scalar_t__) ;
 scalar_t__ get_num_entries_and_dos_name (struct super_block*,struct chain_t*,struct uni_name_t*,scalar_t__*,struct dos_name_t*) ;
 int memcpy (int ,int ,int ) ;
 scalar_t__ stub1 (struct super_block*,int,struct chain_t*) ;
 scalar_t__ stub2 (struct super_block*,struct chain_t*,int,int ,scalar_t__,scalar_t__) ;
 scalar_t__ stub3 (struct super_block*,struct chain_t*,scalar_t__,int,struct uni_name_t*,struct dos_name_t*) ;
 scalar_t__ stub4 (struct super_block*,struct chain_t*,int,int ,scalar_t__,scalar_t__) ;
 scalar_t__ stub5 (struct super_block*,struct chain_t*,int,int ,scalar_t__,scalar_t__) ;
 scalar_t__ stub6 (struct super_block*,struct chain_t*,int,int,struct uni_name_t*,struct dos_name_t*) ;
 scalar_t__ stub7 (struct super_block*,struct chain_t*,scalar_t__,int ,scalar_t__,scalar_t__) ;
 scalar_t__ stub8 (struct super_block*,struct chain_t*,scalar_t__,scalar_t__,struct uni_name_t*,struct dos_name_t*) ;

s32 create_dir(struct inode *inode, struct chain_t *p_dir,
        struct uni_name_t *p_uniname, struct file_id_t *fid)
{
 s32 ret, dentry, num_entries;
 u64 size;
 struct chain_t clu;
 struct dos_name_t dos_name, dot_name;
 struct super_block *sb = inode->i_sb;
 struct fs_info_t *p_fs = &(EXFAT_SB(sb)->fs_info);
 struct fs_func *fs_func = p_fs->fs_func;

 ret = get_num_entries_and_dos_name(sb, p_dir, p_uniname, &num_entries,
        &dos_name);
 if (ret)
  return ret;


 dentry = find_empty_entry(inode, p_dir, num_entries);
 if (dentry < 0)
  return FFS_FULL;

 clu.dir = CLUSTER_32(~0);
 clu.size = 0;
 clu.flags = (p_fs->vol_type == EXFAT) ? 0x03 : 0x01;


 ret = fs_func->alloc_cluster(sb, 1, &clu);
 if (ret < 0)
  return FFS_MEDIAERR;
 else if (ret == 0)
  return FFS_FULL;

 ret = clear_cluster(sb, clu.dir);
 if (ret != FFS_SUCCESS)
  return ret;

 if (p_fs->vol_type == EXFAT) {
  size = p_fs->cluster_size;
 } else {
  size = 0;






  dot_name.name_case = 0x0;
  memcpy(dot_name.name, DOS_CUR_DIR_NAME, DOS_NAME_LENGTH);

  ret = fs_func->init_dir_entry(sb, &clu, 0, TYPE_DIR, clu.dir,
           0);
  if (ret != FFS_SUCCESS)
   return ret;

  ret = fs_func->init_ext_entry(sb, &clu, 0, 1, ((void*)0), &dot_name);
  if (ret != FFS_SUCCESS)
   return ret;

  memcpy(dot_name.name, DOS_PAR_DIR_NAME, DOS_NAME_LENGTH);

  if (p_dir->dir == p_fs->root_dir)
   ret = fs_func->init_dir_entry(sb, &clu, 1, TYPE_DIR,
            CLUSTER_32(0), 0);
  else
   ret = fs_func->init_dir_entry(sb, &clu, 1, TYPE_DIR,
            p_dir->dir, 0);

  if (ret != FFS_SUCCESS)
   return ret;

  ret = p_fs->fs_func->init_ext_entry(sb, &clu, 1, 1, ((void*)0),
          &dot_name);
  if (ret != FFS_SUCCESS)
   return ret;
 }



 ret = fs_func->init_dir_entry(sb, p_dir, dentry, TYPE_DIR, clu.dir,
          size);
 if (ret != FFS_SUCCESS)
  return ret;

 ret = fs_func->init_ext_entry(sb, p_dir, dentry, num_entries, p_uniname,
          &dos_name);
 if (ret != FFS_SUCCESS)
  return ret;

 fid->dir.dir = p_dir->dir;
 fid->dir.size = p_dir->size;
 fid->dir.flags = p_dir->flags;
 fid->entry = dentry;

 fid->attr = ATTR_SUBDIR;
 fid->flags = (p_fs->vol_type == EXFAT) ? 0x03 : 0x01;
 fid->size = size;
 fid->start_clu = clu.dir;

 fid->type = TYPE_DIR;
 fid->rwoffset = 0;
 fid->hint_last_off = -1;

 return FFS_SUCCESS;
}
