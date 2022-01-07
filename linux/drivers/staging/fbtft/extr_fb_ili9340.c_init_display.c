
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* reset ) (struct fbtft_par*) ;} ;
struct fbtft_par {TYPE_1__ fbtftops; } ;


 int MIPI_DCS_EXIT_SLEEP_MODE ;
 int MIPI_DCS_SET_DISPLAY_ON ;
 int MIPI_DCS_SET_GAMMA_CURVE ;
 int MIPI_DCS_SET_PIXEL_FORMAT ;
 int mdelay (int) ;
 int stub1 (struct fbtft_par*) ;
 int write_reg (struct fbtft_par*,int,...) ;

__attribute__((used)) static int init_display(struct fbtft_par *par)
{
 par->fbtftops.reset(par);

 write_reg(par, 0xEF, 0x03, 0x80, 0x02);
 write_reg(par, 0xCF, 0x00, 0XC1, 0X30);
 write_reg(par, 0xED, 0x64, 0x03, 0X12, 0X81);
 write_reg(par, 0xE8, 0x85, 0x00, 0x78);
 write_reg(par, 0xCB, 0x39, 0x2C, 0x00, 0x34, 0x02);
 write_reg(par, 0xF7, 0x20);
 write_reg(par, 0xEA, 0x00, 0x00);


 write_reg(par, 0xC0, 0x23);


 write_reg(par, 0xC1, 0x10);


 write_reg(par, 0xC5, 0x3e, 0x28);


 write_reg(par, 0xC7, 0x86);



 write_reg(par, MIPI_DCS_SET_PIXEL_FORMAT, 0x55);



 write_reg(par, 0xB1, 0x00, 0x18);


 write_reg(par, 0xB6, 0x08, 0x82, 0x27);


 write_reg(par, 0xF2, 0x00);


 write_reg(par, MIPI_DCS_SET_GAMMA_CURVE, 0x01);


 write_reg(par, 0xE0,
    0x0F, 0x31, 0x2B, 0x0C, 0x0E, 0x08, 0x4E, 0xF1,
    0x37, 0x07, 0x10, 0x03, 0x0E, 0x09, 0x00);


 write_reg(par, 0xE1,
    0x00, 0x0E, 0x14, 0x03, 0x11, 0x07, 0x31, 0xC1,
    0x48, 0x08, 0x0F, 0x0C, 0x31, 0x36, 0x0F);

 write_reg(par, MIPI_DCS_EXIT_SLEEP_MODE);

 mdelay(120);

 write_reg(par, MIPI_DCS_SET_DISPLAY_ON);

 return 0;
}
