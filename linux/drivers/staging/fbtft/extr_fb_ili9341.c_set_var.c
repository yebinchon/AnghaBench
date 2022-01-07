
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct fbtft_par {int bgr; TYPE_2__* info; } ;
struct TYPE_3__ {int rotate; } ;
struct TYPE_4__ {TYPE_1__ var; } ;


 int MEM_BGR ;
 int MEM_L ;
 int MEM_V ;
 int MEM_X ;
 int MEM_Y ;
 int MIPI_DCS_SET_ADDRESS_MODE ;
 int write_reg (struct fbtft_par*,int ,int) ;

__attribute__((used)) static int set_var(struct fbtft_par *par)
{
 switch (par->info->var.rotate) {
 case 0:
  write_reg(par, MIPI_DCS_SET_ADDRESS_MODE,
     MEM_X | (par->bgr << MEM_BGR));
  break;
 case 270:
  write_reg(par, MIPI_DCS_SET_ADDRESS_MODE,
     MEM_V | MEM_L | (par->bgr << MEM_BGR));
  break;
 case 180:
  write_reg(par, MIPI_DCS_SET_ADDRESS_MODE,
     MEM_Y | (par->bgr << MEM_BGR));
  break;
 case 90:
  write_reg(par, MIPI_DCS_SET_ADDRESS_MODE,
     MEM_Y | MEM_X | MEM_V | (par->bgr << MEM_BGR));
  break;
 }

 return 0;
}
