
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
typedef int u16 ;
struct TYPE_8__ {int (* write ) (struct fbtft_par*,int*,size_t) ;} ;
struct TYPE_6__ {int* buf; } ;
struct fbtft_par {int CS1; int CS0; TYPE_4__* info; TYPE_3__ fbtftops; int RS; TYPE_1__ txbuf; } ;
struct TYPE_10__ {int ys_page; int ye_page; int xs; int xe; } ;
struct TYPE_7__ {int xres; int yres; } ;
struct TYPE_9__ {int device; TYPE_2__ var; scalar_t__ screen_buffer; } ;


 int BIT (int) ;
 short BLACK ;
 int ENOMEM ;
 int GFP_NOIO ;
 short WHITE ;
 scalar_t__ abs (short) ;
 TYPE_5__ addr_win ;
 int construct_line_bitmap (struct fbtft_par*,int*,short*,int,int,int) ;
 int dev_err (int ,char*,int) ;
 scalar_t__* gamma_correction_table ;
 int gpiod_set_value (int ,int) ;
 int iterate_diffusion_matrix (int,int,int,int,short*,short,short) ;
 int kfree (short*) ;
 short* kmalloc_array (int,int,int ) ;
 int stub1 (struct fbtft_par*,int*,size_t) ;
 int stub2 (struct fbtft_par*,int*,size_t) ;
 int write_reg (struct fbtft_par*,int,int) ;

__attribute__((used)) static int write_vmem(struct fbtft_par *par, size_t offset, size_t len)
{
 u16 *vmem16 = (u16 *)par->info->screen_buffer;
 u8 *buf = par->txbuf.buf;
 int x, y;
 int ret = 0;


 signed short *convert_buf = kmalloc_array(par->info->var.xres *
  par->info->var.yres, sizeof(signed short), GFP_NOIO);

 if (!convert_buf)
  return -ENOMEM;


 for (x = 0; x < par->info->var.xres; ++x)
  for (y = 0; y < par->info->var.yres; ++y) {
   u16 pixel = vmem16[y * par->info->var.xres + x];
   u16 b = pixel & 0x1f;
   u16 g = (pixel & (0x3f << 5)) >> 5;
   u16 r = (pixel & (0x1f << (5 + 6))) >> (5 + 6);

   pixel = (299 * r + 587 * g + 114 * b) / 200;
   if (pixel > 255)
    pixel = 255;


   convert_buf[y * par->info->var.xres + x] =
    (signed short)gamma_correction_table[pixel];
  }


 for (x = 0; x < par->info->var.xres; ++x)
  for (y = 0; y < par->info->var.yres; ++y) {
   signed short pixel =
    convert_buf[y * par->info->var.xres + x];
   signed short error_b = pixel - BLACK;
   signed short error_w = pixel - WHITE;
   signed short error;


   if (abs(error_b) >= abs(error_w)) {

    error = error_w;
    pixel = 0xff;
   } else {

    error = error_b;
    pixel = 0;
   }

   error /= 8;

   iterate_diffusion_matrix(par->info->var.xres,
       par->info->var.yres,
       x, y, convert_buf,
       pixel, error);
  }


 for (y = addr_win.ys_page; y <= addr_win.ye_page; ++y) {

  if (addr_win.xs < par->info->var.xres / 2) {
   construct_line_bitmap(par, buf, convert_buf,
           addr_win.xs,
           par->info->var.xres / 2, y);

   len = par->info->var.xres / 2 - addr_win.xs;




   write_reg(par, 0x00, BIT(6) | (u8)addr_win.xs);
   write_reg(par, 0x00, (0x17 << 3) | (u8)y);


   gpiod_set_value(par->RS, 1);
   ret = par->fbtftops.write(par, buf, len);
   if (ret < 0)
    dev_err(par->info->device,
     "write failed and returned: %d\n",
     ret);
  }

  if (addr_win.xe >= par->info->var.xres / 2) {
   construct_line_bitmap(par, buf,
           convert_buf,
           par->info->var.xres / 2,
           addr_win.xe + 1, y);

   len = addr_win.xe + 1 - par->info->var.xres / 2;




   write_reg(par, 0x01, BIT(6));
   write_reg(par, 0x01, (0x17 << 3) | (u8)y);


   gpiod_set_value(par->RS, 1);
   par->fbtftops.write(par, buf, len);
   if (ret < 0)
    dev_err(par->info->device,
     "write failed and returned: %d\n",
     ret);
  }
 }
 kfree(convert_buf);

 gpiod_set_value(par->CS0, 1);
 gpiod_set_value(par->CS1, 1);

 return ret;
}
