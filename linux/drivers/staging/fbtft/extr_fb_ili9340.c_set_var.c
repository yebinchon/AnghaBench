
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct fbtft_par {int bgr; TYPE_2__* info; } ;
struct TYPE_3__ {int rotate; } ;
struct TYPE_4__ {TYPE_1__ var; } ;


 int ILI9340_MADCTL_MV ;
 int ILI9340_MADCTL_MX ;
 int ILI9340_MADCTL_MY ;
 int MIPI_DCS_SET_ADDRESS_MODE ;
 int write_reg (struct fbtft_par*,int ,int) ;

__attribute__((used)) static int set_var(struct fbtft_par *par)
{
 u8 val;

 switch (par->info->var.rotate) {
 case 270:
  val = ILI9340_MADCTL_MV;
  break;
 case 180:
  val = ILI9340_MADCTL_MY;
  break;
 case 90:
  val = ILI9340_MADCTL_MV | ILI9340_MADCTL_MY | ILI9340_MADCTL_MX;
  break;
 default:
  val = ILI9340_MADCTL_MX;
  break;
 }

 write_reg(par, MIPI_DCS_SET_ADDRESS_MODE, val | (par->bgr << 3));

 return 0;
}
