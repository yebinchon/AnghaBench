
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct fbtft_par {TYPE_2__* info; scalar_t__ bgr; } ;
struct TYPE_3__ {int rotate; } ;
struct TYPE_4__ {TYPE_1__ var; } ;


 int EINVAL ;
 int MADCTL_BGR ;
 int MADCTL_MV ;
 int MADCTL_MX ;
 int MADCTL_MY ;
 int MIPI_DCS_SET_ADDRESS_MODE ;
 int write_reg (struct fbtft_par*,int ,int) ;

__attribute__((used)) static int set_var(struct fbtft_par *par)
{
 u8 madctl_par = 0;

 if (par->bgr)
  madctl_par |= MADCTL_BGR;
 switch (par->info->var.rotate) {
 case 0:
  break;
 case 90:
  madctl_par |= (MADCTL_MV | MADCTL_MY);
  break;
 case 180:
  madctl_par |= (MADCTL_MX | MADCTL_MY);
  break;
 case 270:
  madctl_par |= (MADCTL_MV | MADCTL_MX);
  break;
 default:
  return -EINVAL;
 }
 write_reg(par, MIPI_DCS_SET_ADDRESS_MODE, madctl_par);
 return 0;
}
