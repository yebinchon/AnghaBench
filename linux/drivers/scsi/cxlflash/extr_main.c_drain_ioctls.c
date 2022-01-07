
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cxlflash_cfg {int ioctl_rwsem; } ;


 int down_write (int *) ;
 int up_write (int *) ;

__attribute__((used)) static void drain_ioctls(struct cxlflash_cfg *cfg)
{
 down_write(&cfg->ioctl_rwsem);
 up_write(&cfg->ioctl_rwsem);
}
