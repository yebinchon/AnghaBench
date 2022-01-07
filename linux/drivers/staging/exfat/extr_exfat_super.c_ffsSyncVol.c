
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct super_block {int dummy; } ;
struct fs_info_t {int v_sem; scalar_t__ dev_ejected; } ;
struct TYPE_2__ {struct fs_info_t fs_info; } ;


 TYPE_1__* EXFAT_SB (struct super_block*) ;
 int FFS_MEDIAERR ;
 int FFS_SUCCESS ;
 int VOL_CLEAN ;
 int down (int *) ;
 int fs_set_vol_flags (struct super_block*,int ) ;
 int fs_sync (struct super_block*,int) ;
 int up (int *) ;

__attribute__((used)) static int ffsSyncVol(struct super_block *sb, bool do_sync)
{
 int err = FFS_SUCCESS;
 struct fs_info_t *p_fs = &(EXFAT_SB(sb)->fs_info);


 down(&p_fs->v_sem);


 fs_sync(sb, do_sync);
 fs_set_vol_flags(sb, VOL_CLEAN);

 if (p_fs->dev_ejected)
  err = FFS_MEDIAERR;


 up(&p_fs->v_sem);

 return err;
}
