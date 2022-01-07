
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* reset ) (struct fbtft_par*) ;} ;
struct fbtft_par {TYPE_1__ fbtftops; } ;


 int MIPI_DCS_EXIT_SLEEP_MODE ;
 int MIPI_DCS_SET_DISPLAY_OFF ;
 int MIPI_DCS_SET_DISPLAY_ON ;
 int MIPI_DCS_SET_GAMMA_CURVE ;
 int MIPI_DCS_SET_PIXEL_FORMAT ;
 int MIPI_DCS_SOFT_RESET ;
 int mdelay (int) ;
 int stub1 (struct fbtft_par*) ;
 int write_reg (struct fbtft_par*,int,...) ;

__attribute__((used)) static int init_display(struct fbtft_par *par)
{
 par->fbtftops.reset(par);


 write_reg(par, MIPI_DCS_SOFT_RESET);
 mdelay(5);
 write_reg(par, MIPI_DCS_SET_DISPLAY_OFF);

 write_reg(par, 0xCF, 0x00, 0x83, 0x30);
 write_reg(par, 0xED, 0x64, 0x03, 0x12, 0x81);
 write_reg(par, 0xE8, 0x85, 0x01, 0x79);
 write_reg(par, 0xCB, 0x39, 0X2C, 0x00, 0x34, 0x02);
 write_reg(par, 0xF7, 0x20);
 write_reg(par, 0xEA, 0x00, 0x00);

 write_reg(par, 0xC0, 0x26);
 write_reg(par, 0xC1, 0x11);

 write_reg(par, 0xC5, 0x35, 0x3E);
 write_reg(par, 0xC7, 0xBE);

 write_reg(par, MIPI_DCS_SET_PIXEL_FORMAT, 0x55);

 write_reg(par, 0xB1, 0x00, 0x1B);


 write_reg(par, MIPI_DCS_SET_GAMMA_CURVE, 0x01);

 write_reg(par, 0xB7, 0x07);
 write_reg(par, 0xB6, 0x0A, 0x82, 0x27, 0x00);
 write_reg(par, MIPI_DCS_EXIT_SLEEP_MODE);
 mdelay(100);
 write_reg(par, MIPI_DCS_SET_DISPLAY_ON);
 mdelay(20);

 return 0;
}
