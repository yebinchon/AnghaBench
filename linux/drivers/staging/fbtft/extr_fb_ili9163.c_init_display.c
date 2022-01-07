
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ cs; } ;
struct TYPE_3__ {int (* reset ) (struct fbtft_par*) ;} ;
struct fbtft_par {TYPE_2__ gpio; TYPE_1__ fbtftops; } ;


 int CMD_DFUNCTR ;
 int CMD_DINVCTR ;
 int CMD_FRMCTR1 ;
 int CMD_GAMRSEL ;
 int CMD_PWCTR1 ;
 int CMD_PWCTR2 ;
 int CMD_VCOMCTR1 ;
 int CMD_VCOMOFFS ;
 int HEIGHT ;
 int MIPI_DCS_ENTER_NORMAL_MODE ;
 int MIPI_DCS_EXIT_SLEEP_MODE ;
 int MIPI_DCS_PIXEL_FMT_16BIT ;
 int MIPI_DCS_SET_COLUMN_ADDRESS ;
 int MIPI_DCS_SET_DISPLAY_ON ;
 int MIPI_DCS_SET_GAMMA_CURVE ;
 int MIPI_DCS_SET_PAGE_ADDRESS ;
 int MIPI_DCS_SET_PIXEL_FORMAT ;
 int MIPI_DCS_SOFT_RESET ;
 int MIPI_DCS_WRITE_MEMORY_START ;
 int WIDTH ;
 int gpiod_set_value (scalar_t__,int ) ;
 int mdelay (int) ;
 int stub1 (struct fbtft_par*) ;
 int write_reg (struct fbtft_par*,int ,...) ;

__attribute__((used)) static int init_display(struct fbtft_par *par)
{
 par->fbtftops.reset(par);

 if (par->gpio.cs)
  gpiod_set_value(par->gpio.cs, 0);

 write_reg(par, MIPI_DCS_SOFT_RESET);
 mdelay(500);
 write_reg(par, MIPI_DCS_EXIT_SLEEP_MODE);
 mdelay(5);
 write_reg(par, MIPI_DCS_SET_PIXEL_FORMAT, MIPI_DCS_PIXEL_FMT_16BIT);

 write_reg(par, MIPI_DCS_SET_GAMMA_CURVE, 0x02);



 write_reg(par, MIPI_DCS_ENTER_NORMAL_MODE);
 write_reg(par, CMD_DFUNCTR, 0xff, 0x06);

 write_reg(par, CMD_FRMCTR1, 0x08, 0x02);
 write_reg(par, CMD_DINVCTR, 0x07);

 write_reg(par, CMD_PWCTR1, 0x0A, 0x02);

 write_reg(par, CMD_PWCTR2, 0x02);

 write_reg(par, CMD_VCOMCTR1, 0x50, 0x63);
 write_reg(par, CMD_VCOMOFFS, 0);

 write_reg(par, MIPI_DCS_SET_COLUMN_ADDRESS, 0, 0, 0, WIDTH);
 write_reg(par, MIPI_DCS_SET_PAGE_ADDRESS, 0, 0, 0, HEIGHT);

 write_reg(par, MIPI_DCS_SET_DISPLAY_ON);
 write_reg(par, MIPI_DCS_WRITE_MEMORY_START);

 return 0;
}
