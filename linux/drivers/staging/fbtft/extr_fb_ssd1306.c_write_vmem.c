
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
typedef scalar_t__ u16 ;
struct TYPE_9__ {int* buf; } ;
struct TYPE_8__ {int (* write ) (struct fbtft_par*,int*,int) ;} ;
struct TYPE_7__ {int dc; } ;
struct fbtft_par {TYPE_5__* info; TYPE_4__ txbuf; TYPE_3__ fbtftops; TYPE_2__ gpio; } ;
struct TYPE_6__ {int xres; int yres; } ;
struct TYPE_10__ {int device; TYPE_1__ var; scalar_t__ screen_buffer; } ;


 int BIT (int) ;
 int dev_err (int ,char*,int) ;
 int gpiod_set_value (int ,int) ;
 int stub1 (struct fbtft_par*,int*,int) ;

__attribute__((used)) static int write_vmem(struct fbtft_par *par, size_t offset, size_t len)
{
 u16 *vmem16 = (u16 *)par->info->screen_buffer;
 u32 xres = par->info->var.xres;
 u32 yres = par->info->var.yres;
 u8 *buf = par->txbuf.buf;
 int x, y, i;
 int ret = 0;

 for (x = 0; x < xres; x++) {
  for (y = 0; y < yres / 8; y++) {
   *buf = 0x00;
   for (i = 0; i < 8; i++)
    if (vmem16[(y * 8 + i) * xres + x])
     *buf |= BIT(i);
   buf++;
  }
 }


 gpiod_set_value(par->gpio.dc, 1);
 ret = par->fbtftops.write(par, par->txbuf.buf, xres * yres / 8);
 if (ret < 0)
  dev_err(par->info->device, "write failed and returned: %d\n",
   ret);

 return ret;
}
