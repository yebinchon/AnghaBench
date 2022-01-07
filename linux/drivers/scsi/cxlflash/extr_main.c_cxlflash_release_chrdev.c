
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dev; } ;
struct cxlflash_cfg {TYPE_1__ cdev; int * chardev; } ;


 int MINOR (int ) ;
 int cdev_del (TYPE_1__*) ;
 int cxlflash_put_minor (int ) ;
 int device_unregister (int *) ;

__attribute__((used)) static void cxlflash_release_chrdev(struct cxlflash_cfg *cfg)
{
 device_unregister(cfg->chardev);
 cfg->chardev = ((void*)0);
 cdev_del(&cfg->cdev);
 cxlflash_put_minor(MINOR(cfg->cdev.dev));
}
