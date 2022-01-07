
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ set_gamma; } ;
struct TYPE_4__ {scalar_t__ curves; } ;
struct fbtft_par {TYPE_3__* info; TYPE_2__ fbtftops; TYPE_1__ gamma; } ;
struct TYPE_6__ {int dev; } ;


 int debug_device_attr ;
 int device_remove_file (int ,int *) ;
 int * gamma_device_attrs ;

void fbtft_sysfs_exit(struct fbtft_par *par)
{
 device_remove_file(par->info->dev, &debug_device_attr);
 if (par->gamma.curves && par->fbtftops.set_gamma)
  device_remove_file(par->info->dev, &gamma_device_attrs[0]);
}
