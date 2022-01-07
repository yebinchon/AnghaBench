
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct super_block {int dummy; } ;
struct fs_info_t {scalar_t__ vol_type; int v_sem; scalar_t__ dev_ejected; } ;
struct TYPE_2__ {struct fs_info_t fs_info; } ;


 scalar_t__ EXFAT ;
 TYPE_1__* EXFAT_SB (struct super_block*) ;
 int FAT_release_all (struct super_block*) ;
 int FFS_MEDIAERR ;
 int FFS_SUCCESS ;
 int VOL_CLEAN ;
 int bdev_close (struct super_block*) ;
 int buf_release_all (struct super_block*) ;
 int buf_shutdown (struct super_block*) ;
 int down (int *) ;
 int free_alloc_bitmap (struct super_block*) ;
 int free_upcase_table (struct super_block*) ;
 int fs_set_vol_flags (struct super_block*,int ) ;
 int fs_sync (struct super_block*,int) ;
 int pr_info (char*) ;
 int up (int *) ;
 int z_sem ;

__attribute__((used)) static int ffsUmountVol(struct super_block *sb)
{
 struct fs_info_t *p_fs = &(EXFAT_SB(sb)->fs_info);
 int err = FFS_SUCCESS;

 pr_info("[EXFAT] trying to unmount...\n");

 down(&z_sem);


 down(&p_fs->v_sem);

 fs_sync(sb, 0);
 fs_set_vol_flags(sb, VOL_CLEAN);

 if (p_fs->vol_type == EXFAT) {
  free_upcase_table(sb);
  free_alloc_bitmap(sb);
 }

 FAT_release_all(sb);
 buf_release_all(sb);


 bdev_close(sb);

 if (p_fs->dev_ejected) {
  pr_info("[EXFAT] unmounted with media errors. Device is already ejected.\n");
  err = FFS_MEDIAERR;
 }

 buf_shutdown(sb);


 up(&p_fs->v_sem);
 up(&z_sem);

 pr_info("[EXFAT] unmounted successfully\n");

 return err;
}
