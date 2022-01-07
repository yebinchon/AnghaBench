
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* reset ) (struct fbtft_par*) ;} ;
struct fbtft_par {TYPE_1__ fbtftops; } ;


 int MIPI_DCS_EXIT_SLEEP_MODE ;
 int MIPI_DCS_SET_ADDRESS_MODE ;
 int MIPI_DCS_SET_DISPLAY_ON ;
 int MIPI_DCS_SET_PIXEL_FORMAT ;
 int stub1 (struct fbtft_par*) ;
 int udelay (int) ;
 int write_reg (struct fbtft_par*,int,...) ;

__attribute__((used)) static int init_display(struct fbtft_par *par)
{
 par->fbtftops.reset(par);

 write_reg(par, 0xB0, 0x80);
 write_reg(par, 0xC0, 0x0A, 0x0A);
 write_reg(par, 0xC1, 0x45, 0x07);
 write_reg(par, 0xC2, 0x33);
 write_reg(par, 0xC5, 0x00, 0x42, 0x80);
 write_reg(par, 0xB1, 0xD0, 0x11);
 write_reg(par, 0xB4, 0x02);
 write_reg(par, 0xB6, 0x00, 0x22, 0x3B);
 write_reg(par, 0xB7, 0x07);
 write_reg(par, MIPI_DCS_SET_ADDRESS_MODE, 0x58);
 write_reg(par, 0xF0, 0x36, 0xA5, 0xD3);
 write_reg(par, 0xE5, 0x80);
 write_reg(par, 0xE5, 0x01);
 write_reg(par, 0xB3, 0x00);
 write_reg(par, 0xE5, 0x00);
 write_reg(par, 0xF0, 0x36, 0xA5, 0x53);
 write_reg(par, 0xE0, 0x00, 0x35, 0x33, 0x00, 0x00, 0x00,
         0x00, 0x35, 0x33, 0x00, 0x00, 0x00);
 write_reg(par, MIPI_DCS_SET_PIXEL_FORMAT, 0x55);
 write_reg(par, MIPI_DCS_EXIT_SLEEP_MODE);
 udelay(250);
 write_reg(par, MIPI_DCS_SET_DISPLAY_ON);

 return 0;
}
