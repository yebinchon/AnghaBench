
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
struct TYPE_7__ {int dc; } ;
struct TYPE_6__ {int* buf; } ;
struct TYPE_5__ {int (* write ) (struct fbtft_par*,int*,int) ;} ;
struct fbtft_par {TYPE_4__* info; TYPE_3__ gpio; TYPE_2__ txbuf; TYPE_1__ fbtftops; } ;
struct TYPE_8__ {int device; scalar_t__ screen_buffer; } ;


 int LCD_COL_ADDRESS ;
 int LCD_PAGE_ADDRESS ;
 int PAGES ;
 int WIDTH ;
 int dev_err (int ,char*,int) ;
 int gpiod_set_value (int ,int) ;
 int stub1 (struct fbtft_par*,int*,int) ;
 int write_reg (struct fbtft_par*,int) ;

__attribute__((used)) static int write_vmem(struct fbtft_par *par, size_t offset, size_t len)
{
 u16 *vmem16 = (u16 *)par->info->screen_buffer;
 u8 *buf;
 int x, y, i;
 int ret = 0;

 for (y = 0; y < PAGES; y++) {
  buf = par->txbuf.buf;
  for (x = 0; x < WIDTH; x++) {
   *buf = 0x00;
   for (i = 0; i < 8; i++)
    *buf |= (vmem16[((y * 8 * WIDTH) +
       (i * WIDTH)) + x] ?
      1 : 0) << i;
   buf++;
  }

  write_reg(par, LCD_PAGE_ADDRESS | (u8)y);
  write_reg(par, 0x00);
  write_reg(par, LCD_COL_ADDRESS);
  gpiod_set_value(par->gpio.dc, 1);
  ret = par->fbtftops.write(par, par->txbuf.buf, WIDTH);
  gpiod_set_value(par->gpio.dc, 0);
 }

 if (ret < 0)
  dev_err(par->info->device, "write failed and returned: %d\n",
   ret);

 return ret;
}
