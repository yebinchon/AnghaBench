
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fbtft_par {int dummy; } ;


 int GCTRL ;
 int MIPI_DCS_EXIT_SLEEP_MODE ;
 int MIPI_DCS_PIXEL_FMT_16BIT ;
 int MIPI_DCS_SET_DISPLAY_ON ;
 int MIPI_DCS_SET_PIXEL_FORMAT ;
 int PORCTRL ;
 int PWCTRL1 ;
 int VCMOFSET ;
 int VCOMS ;
 int VDVS ;
 int VDVVRHEN ;
 int VRHS ;
 int mdelay (int) ;
 int write_reg (struct fbtft_par*,int ,...) ;

__attribute__((used)) static int init_display(struct fbtft_par *par)
{

 write_reg(par, MIPI_DCS_EXIT_SLEEP_MODE);
 mdelay(120);


 write_reg(par, MIPI_DCS_SET_PIXEL_FORMAT, MIPI_DCS_PIXEL_FMT_16BIT);

 write_reg(par, PORCTRL, 0x08, 0x08, 0x00, 0x22, 0x22);





 write_reg(par, GCTRL, 0x35);





 write_reg(par, VDVVRHEN, 0x01, 0xFF);





 write_reg(par, VRHS, 0x0B);


 write_reg(par, VDVS, 0x20);


 write_reg(par, VCOMS, 0x20);


 write_reg(par, VCMOFSET, 0x20);






 write_reg(par, PWCTRL1, 0xA4, 0xA1);

 write_reg(par, MIPI_DCS_SET_DISPLAY_ON);
 return 0;
}
