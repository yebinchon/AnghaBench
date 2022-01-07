
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int* curves; int lock; } ;
struct TYPE_5__ {int (* reset ) (struct fbtft_par*) ;} ;
struct fbtft_par {TYPE_4__* info; TYPE_2__ gamma; TYPE_1__ fbtftops; } ;
struct TYPE_7__ {int yres; int rotate; } ;
struct TYPE_8__ {TYPE_3__ var; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int stub1 (struct fbtft_par*) ;
 int write_reg (struct fbtft_par*,int) ;

__attribute__((used)) static int init_display(struct fbtft_par *par)
{
 par->fbtftops.reset(par);

 if (par->gamma.curves[0] == 0) {
  mutex_lock(&par->gamma.lock);
  if (par->info->var.yres == 64)
   par->gamma.curves[0] = 0xCF;
  else
   par->gamma.curves[0] = 0x8F;
  mutex_unlock(&par->gamma.lock);
 }


 write_reg(par, 0xAE);


 write_reg(par, 0xD5);
 write_reg(par, 0x80);


 write_reg(par, 0xA8);
 if (par->info->var.yres == 64)
  write_reg(par, 0x3F);
 else
  write_reg(par, 0x1F);


 write_reg(par, 0xD3);
 write_reg(par, 0x0);


 write_reg(par, 0x40 | 0x0);


 write_reg(par, 0x8D);

 write_reg(par, 0x14);


 write_reg(par, 0x20);

 write_reg(par, 0x01);





 write_reg(par, 0xA0 | ((par->info->var.rotate == 180) ? 0x0 : 0x1));





 write_reg(par, ((par->info->var.rotate == 180) ? 0xC8 : 0xC0));


 write_reg(par, 0xDA);
 if (par->info->var.yres == 64) {

  write_reg(par, 0x12);
 } else {

  write_reg(par, 0x02);
 }


 write_reg(par, 0xD9);
 write_reg(par, 0xF1);





 write_reg(par, 0xA4);






 write_reg(par, 0xA6);


 write_reg(par, 0xAF);

 return 0;
}
