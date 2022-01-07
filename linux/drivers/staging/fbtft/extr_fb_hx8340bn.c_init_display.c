
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* reset ) (struct fbtft_par*) ;} ;
struct fbtft_par {TYPE_1__ fbtftops; } ;


 int MIPI_DCS_PIXEL_FMT_16BIT ;
 int MIPI_DCS_SET_DISPLAY_ON ;
 int MIPI_DCS_SET_PIXEL_FORMAT ;
 int mdelay (int) ;
 int stub1 (struct fbtft_par*) ;
 int write_reg (struct fbtft_par*,int,...) ;

__attribute__((used)) static int init_display(struct fbtft_par *par)
{
 par->fbtftops.reset(par);
 write_reg(par, 0xC1, 0xFF, 0x83, 0x40);







 write_reg(par, 0x11);
 mdelay(150);


 write_reg(par, 0xCA, 0x70, 0x00, 0xD9);







 write_reg(par, 0xB0, 0x01, 0x11);


 write_reg(par, 0xC9, 0x90, 0x49, 0x10, 0x28, 0x28, 0x10, 0x00, 0x06);
 mdelay(20);
 write_reg(par, 0xB5, 0x35, 0x20, 0x45);
 write_reg(par, 0xB4, 0x33, 0x25, 0x4C);
 mdelay(10);







 write_reg(par, MIPI_DCS_SET_PIXEL_FORMAT, MIPI_DCS_PIXEL_FMT_16BIT);






 write_reg(par, MIPI_DCS_SET_DISPLAY_ON);
 mdelay(10);

 return 0;
}
