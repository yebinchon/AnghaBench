
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fbtft_par {int dummy; } ;


 int MIPI_DCS_SET_DISPLAY_OFF ;
 int MIPI_DCS_SET_DISPLAY_ON ;
 int write_reg (struct fbtft_par*,int ) ;

__attribute__((used)) static int blank(struct fbtft_par *par, bool on)
{
 if (on)
  write_reg(par, MIPI_DCS_SET_DISPLAY_OFF);
 else
  write_reg(par, MIPI_DCS_SET_DISPLAY_ON);
 return 0;
}
