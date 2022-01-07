
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct fbtft_par {scalar_t__ bgr; TYPE_2__* info; } ;
struct TYPE_3__ {int rotate; } ;
struct TYPE_4__ {TYPE_1__ var; } ;


 int HX8357D_MADCTL_BGR ;
 int HX8357D_MADCTL_MV ;
 int HX8357D_MADCTL_MX ;
 int HX8357D_MADCTL_MY ;
 int HX8357D_MADCTL_RGB ;
 int MIPI_DCS_SET_ADDRESS_MODE ;
 int write_reg (struct fbtft_par*,int ,int) ;

__attribute__((used)) static int set_var(struct fbtft_par *par)
{
 u8 val;

 switch (par->info->var.rotate) {
 case 270:
  val = HX8357D_MADCTL_MV | HX8357D_MADCTL_MX;
  break;
 case 180:
  val = 0;
  break;
 case 90:
  val = HX8357D_MADCTL_MV | HX8357D_MADCTL_MY;
  break;
 default:
  val = HX8357D_MADCTL_MX | HX8357D_MADCTL_MY;
  break;
 }

 val |= (par->bgr ? HX8357D_MADCTL_RGB : HX8357D_MADCTL_BGR);


 write_reg(par, MIPI_DCS_SET_ADDRESS_MODE, val);

 return 0;
}
