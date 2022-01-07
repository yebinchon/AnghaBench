
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct uni_name_t {int dummy; } ;
struct super_block {int dummy; } ;
struct inode {struct super_block* i_sb; } ;
struct fs_info_t {int v_sem; scalar_t__ dev_ejected; } ;
struct file_id_t {int dummy; } ;
struct chain_t {int dummy; } ;
struct TYPE_2__ {struct fs_info_t fs_info; } ;


 TYPE_1__* EXFAT_SB (struct super_block*) ;
 int FFS_ERROR ;
 int FFS_MEDIAERR ;
 int VOL_CLEAN ;
 int VOL_DIRTY ;
 int create_file (struct inode*,struct chain_t*,struct uni_name_t*,int ,struct file_id_t*) ;
 int down (int *) ;
 int fs_set_vol_flags (struct super_block*,int ) ;
 int fs_sync (struct super_block*,int) ;
 int resolve_path (struct inode*,char*,struct chain_t*,struct uni_name_t*) ;
 int up (int *) ;

__attribute__((used)) static int ffsCreateFile(struct inode *inode, char *path, u8 mode,
    struct file_id_t *fid)
{
 struct chain_t dir;
 struct uni_name_t uni_name;
 struct super_block *sb = inode->i_sb;
 struct fs_info_t *p_fs = &(EXFAT_SB(sb)->fs_info);
 int ret;


 if (!fid || !path || (*path == '\0'))
  return FFS_ERROR;


 down(&p_fs->v_sem);


 ret = resolve_path(inode, path, &dir, &uni_name);
 if (ret)
  goto out;

 fs_set_vol_flags(sb, VOL_DIRTY);


 ret = create_file(inode, &dir, &uni_name, mode, fid);






 if (p_fs->dev_ejected)
  ret = FFS_MEDIAERR;

out:

 up(&p_fs->v_sem);

 return ret;
}
