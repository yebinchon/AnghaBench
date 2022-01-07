
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int (* reset ) (struct fbtft_par*) ;} ;
struct fbtft_par {TYPE_3__* info; TYPE_1__ fbtftops; } ;
struct TYPE_5__ {scalar_t__ xres; int yres; scalar_t__ rotate; } ;
struct TYPE_6__ {TYPE_2__ var; int device; } ;


 int EINVAL ;
 int HEIGHT ;
 scalar_t__ WIDTH ;
 int dev_err (int ,char*) ;
 int msleep (int) ;
 int stub1 (struct fbtft_par*) ;
 int write_reg (struct fbtft_par*,int,...) ;

__attribute__((used)) static int init_display(struct fbtft_par *par)
{
 if (!par->info->var.xres || par->info->var.xres > WIDTH ||
     !par->info->var.yres || par->info->var.yres > HEIGHT ||
     par->info->var.yres % 8) {
  dev_err(par->info->device, "Invalid screen size\n");
  return -EINVAL;
 }

 if (par->info->var.rotate) {
  dev_err(par->info->device, "Display rotation not supported\n");
  return -EINVAL;
 }

 par->fbtftops.reset(par);


 write_reg(par, 0xAE);


 write_reg(par, 0xD5, 0x80);


 write_reg(par, 0xA8, par->info->var.yres - 1);


 write_reg(par, 0xD3, 0x00);


 write_reg(par, 0x40 | 0x0);



 write_reg(par, 0xA0 | 0x1);



 write_reg(par, 0xC8);


 if (par->info->var.yres == 64)

  write_reg(par, 0xDA, 0x12);
 else if (par->info->var.yres == 48)

  write_reg(par, 0xDA, 0x12);
 else

  write_reg(par, 0xDA, 0x02);


 write_reg(par, 0xD9, 0xF1);


 write_reg(par, 0xDB, 0x40);


 write_reg(par, 0xAF);

 msleep(150);

 return 0;
}
