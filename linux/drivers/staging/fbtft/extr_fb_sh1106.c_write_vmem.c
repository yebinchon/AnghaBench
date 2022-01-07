
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
typedef scalar_t__ u16 ;
struct TYPE_6__ {int * buf; } ;
struct fbtft_par {TYPE_3__ txbuf; TYPE_2__* info; } ;
struct TYPE_4__ {int xres; } ;
struct TYPE_5__ {TYPE_1__ var; scalar_t__ screen_buffer; } ;


 int BIT (int) ;
 int DIV_ROUND_UP (size_t,int) ;
 int fbtft_write_buf_dc (struct fbtft_par*,int *,int,int) ;
 int memset (int *,int ,int) ;
 int write_reg (struct fbtft_par*,int,int,int) ;

__attribute__((used)) static int write_vmem(struct fbtft_par *par, size_t offset, size_t len)
{
 u16 *vmem16 = (u16 *)par->info->screen_buffer;
 u32 xres = par->info->var.xres;
 int page, page_start, page_end, x, i, ret;
 u8 *buf = par->txbuf.buf;


 page_start = offset / (8 * 2 * xres);
 page_end = DIV_ROUND_UP(offset + len, 8 * 2 * xres);

 for (page = page_start; page < page_end; page++) {

  write_reg(par, 0xb0 | page, 0x00 | 2, 0x10 | 0);

  memset(buf, 0, xres);
  for (x = 0; x < xres; x++)
   for (i = 0; i < 8; i++)
    if (vmem16[(page * 8 + i) * xres + x])
     buf[x] |= BIT(i);


  ret = fbtft_write_buf_dc(par, buf, xres, 1);
  if (ret < 0)
   return ret;
 }

 return 0;
}
