
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
typedef scalar_t__ u16 ;
struct TYPE_7__ {int* buf; } ;
struct TYPE_6__ {int (* write ) (struct fbtft_par*,int*,int) ;} ;
struct TYPE_5__ {int dc; } ;
struct fbtft_par {TYPE_4__* info; TYPE_3__ txbuf; TYPE_2__ fbtftops; TYPE_1__ gpio; } ;
struct TYPE_8__ {int device; scalar_t__ screen_buffer; } ;


 int dev_err (int ,char*,int) ;
 int gpiod_set_value (int ,int) ;
 int stub1 (struct fbtft_par*,int*,int) ;

__attribute__((used)) static int write_vmem(struct fbtft_par *par, size_t offset, size_t len)
{
 u16 *vmem16 = (u16 *)par->info->screen_buffer;
 u8 *buf = par->txbuf.buf;
 int x, y, i;
 int ret = 0;

 for (x = 0; x < 84; x++) {
  for (y = 0; y < 6; y++) {
   *buf = 0x00;
   for (i = 0; i < 8; i++)
    *buf |= (vmem16[(y * 8 + i) * 84 + x] ?
      1 : 0) << i;
   buf++;
  }
 }


 gpiod_set_value(par->gpio.dc, 1);
 ret = par->fbtftops.write(par, par->txbuf.buf, 6 * 84);
 if (ret < 0)
  dev_err(par->info->device, "write failed and returned: %d\n",
   ret);

 return ret;
}
