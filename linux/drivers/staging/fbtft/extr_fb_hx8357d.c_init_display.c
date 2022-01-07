
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* reset ) (struct fbtft_par*) ;} ;
struct fbtft_par {TYPE_1__ fbtftops; } ;


 int HX8357D_SETC ;
 int HX8357D_SETCOM ;
 int HX8357D_SETCYC ;
 int HX8357D_SETGAMMA ;
 int HX8357D_SETSTBA ;
 int HX8357_SETOSC ;
 int HX8357_SETPANEL ;
 int HX8357_SETPWR1 ;
 int HX8357_SETRGB ;
 int MIPI_DCS_EXIT_SLEEP_MODE ;
 int MIPI_DCS_SET_ADDRESS_MODE ;
 int MIPI_DCS_SET_DISPLAY_ON ;
 int MIPI_DCS_SET_PIXEL_FORMAT ;
 int MIPI_DCS_SET_TEAR_ON ;
 int MIPI_DCS_SET_TEAR_SCANLINE ;
 int MIPI_DCS_SOFT_RESET ;
 int msleep (int) ;
 int stub1 (struct fbtft_par*) ;
 int usleep_range (int,int) ;
 int write_reg (struct fbtft_par*,int ,...) ;

__attribute__((used)) static int init_display(struct fbtft_par *par)
{
 par->fbtftops.reset(par);


 write_reg(par, MIPI_DCS_SOFT_RESET);
 usleep_range(5000, 7000);


 write_reg(par, HX8357D_SETC, 0xFF, 0x83, 0x57);
 msleep(150);


 write_reg(par, HX8357_SETRGB, 0x00, 0x00, 0x06, 0x06);


 write_reg(par, HX8357D_SETCOM, 0x25);


 write_reg(par, HX8357_SETOSC, 0x68);


 write_reg(par, HX8357_SETPANEL, 0x05);

 write_reg(par, HX8357_SETPWR1,
    0x00,
    0x15,
    0x1C,
    0x1C,
    0x83,
    0xAA);

 write_reg(par, HX8357D_SETSTBA,
    0x50,
    0x50,
    0x01,
    0x3C,
    0x1E,
    0x08);

 write_reg(par, HX8357D_SETCYC,
    0x02,
    0x40,
    0x00,
    0x2A,
    0x2A,
    0x0D,
    0x78);

 write_reg(par, HX8357D_SETGAMMA,
    0x02,
    0x0A,
    0x11,
    0x1d,
    0x23,
    0x35,
    0x41,
    0x4b,
    0x4b,
    0x42,
    0x3A,
    0x27,
    0x1B,
    0x08,
    0x09,
    0x03,
    0x02,
    0x0A,
    0x11,
    0x1d,
    0x23,
    0x35,
    0x41,
    0x4b,
    0x4b,
    0x42,
    0x3A,
    0x27,
    0x1B,
    0x08,
    0x09,
    0x03,
    0x00,
    0x01);


 write_reg(par, MIPI_DCS_SET_PIXEL_FORMAT, 0x55);

 write_reg(par, MIPI_DCS_SET_ADDRESS_MODE, 0xC0);


 write_reg(par, MIPI_DCS_SET_TEAR_ON, 0x00);


 write_reg(par, MIPI_DCS_SET_TEAR_SCANLINE, 0x00, 0x02);


 write_reg(par, MIPI_DCS_EXIT_SLEEP_MODE);
 msleep(150);


 write_reg(par, MIPI_DCS_SET_DISPLAY_ON);
 usleep_range(5000, 7000);

 return 0;
}
