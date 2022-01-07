
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct fbtft_par {TYPE_2__* info; } ;
struct TYPE_3__ {int rotate; } ;
struct TYPE_4__ {TYPE_1__ var; } ;


 int CMD_LCD_ORIENTATION ;
 int write_reg (struct fbtft_par*,int ,int) ;

__attribute__((used)) static int set_var(struct fbtft_par *par)
{
 u8 rotate;


 switch (par->info->var.rotate) {
 case 90:
  rotate = 27;
  break;
 case 180:
  rotate = 18;
  break;
 case 270:
  rotate = 9;
  break;
 default:
  rotate = 0;
 }
 write_reg(par, CMD_LCD_ORIENTATION, rotate);

 return 0;
}
