
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


 int BIT (int) ;
 int MIPI_DCS_SET_ADDRESS_MODE ;
 int MIPI_DCS_WRITE_MEMORY_START ;
 int write_reg (struct fbtft_par*,int ,...) ;

__attribute__((used)) static int set_var(struct fbtft_par *par)
{
 u8 mactrl_data = 0;

 switch (par->info->var.rotate) {
 case 0:
  mactrl_data = 0x08;
  break;
 case 180:
  mactrl_data = 0xC8;
  break;
 case 270:
  mactrl_data = 0xA8;
  break;
 case 90:
  mactrl_data = 0x68;
  break;
 }


 if (par->bgr)
  mactrl_data |= BIT(2);
 write_reg(par, MIPI_DCS_SET_ADDRESS_MODE, mactrl_data);
 write_reg(par, MIPI_DCS_WRITE_MEMORY_START);
 return 0;
}
