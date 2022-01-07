
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int (* reset ) (struct fbtft_par*) ;int register_backlight; } ;
struct fbtft_par {TYPE_3__ fbtftops; TYPE_2__* pdata; } ;
struct TYPE_4__ {scalar_t__ backlight; } ;
struct TYPE_5__ {TYPE_1__ display; } ;


 scalar_t__ FBTFT_ONBOARD_BACKLIGHT ;
 int register_onboard_backlight ;
 int stub1 (struct fbtft_par*) ;
 int write_reg (struct fbtft_par*,int,...) ;

__attribute__((used)) static int init_display(struct fbtft_par *par)
{
 if (par->pdata &&
     par->pdata->display.backlight == FBTFT_ONBOARD_BACKLIGHT) {

  par->fbtftops.register_backlight = register_onboard_backlight;
 }

 par->fbtftops.reset(par);

 write_reg(par, 0xfd, 0x12);
 write_reg(par, 0xfd, 0xb1);
 write_reg(par, 0xae);
 write_reg(par, 0xb3, 0xf1);
 write_reg(par, 0xca, 0x7f);
 write_reg(par, 0x15, 0x00, 0x7f);
 write_reg(par, 0x75, 0x00, 0x7f);
 write_reg(par, 0xa1, 0x00);
 write_reg(par, 0xa2, 0x00);
 write_reg(par, 0xb5, 0x00);
 write_reg(par, 0xab, 0x01);
 write_reg(par, 0xb1, 0x32);
 write_reg(par, 0xb4, 0xa0, 0xb5, 0x55);
 write_reg(par, 0xbb, 0x17);
 write_reg(par, 0xbe, 0x05);
 write_reg(par, 0xc1, 0xc8, 0x80, 0xc8);
 write_reg(par, 0xc7, 0x0f);
 write_reg(par, 0xb6, 0x01);
 write_reg(par, 0xa6);
 write_reg(par, 0xaf);

 return 0;
}
