
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ cs; } ;
struct TYPE_3__ {int (* reset ) (struct fbtft_par*) ;} ;
struct fbtft_par {TYPE_2__ gpio; TYPE_1__ fbtftops; } ;


 int BIT (int) ;
 int bt ;
 int gpiod_set_value (scalar_t__,int ) ;
 int mdelay (int) ;
 int stub1 (struct fbtft_par*) ;
 int vc ;
 int vcm ;
 int vdv ;
 int vrh ;
 int write_reg (struct fbtft_par*,int,int) ;

__attribute__((used)) static int init_display(struct fbtft_par *par)
{
 par->fbtftops.reset(par);

 if (par->gpio.cs)
  gpiod_set_value(par->gpio.cs, 0);

 bt &= 0x07;
 vc &= 0x07;
 vrh &= 0x0f;
 vdv &= 0x1f;
 vcm &= 0x3f;




 write_reg(par, 0x00E3, 0x3008);
 write_reg(par, 0x00E7, 0x0012);
 write_reg(par, 0x00EF, 0x1231);
 write_reg(par, 0x0001, 0x0100);
 write_reg(par, 0x0002, 0x0700);
 write_reg(par, 0x0004, 0x0000);
 write_reg(par, 0x0008, 0x0207);
 write_reg(par, 0x0009, 0x0000);
 write_reg(par, 0x000A, 0x0000);
 write_reg(par, 0x000C, 0x0000);
 write_reg(par, 0x000D, 0x0000);
 write_reg(par, 0x000F, 0x0000);


 write_reg(par, 0x0010, 0x0000);
 write_reg(par, 0x0011, 0x0007);
 write_reg(par, 0x0012, 0x0000);
 write_reg(par, 0x0013, 0x0000);
 mdelay(200);
 write_reg(par, 0x0010,
  BIT(12) | (bt << 8) | BIT(7) | BIT(4));
 write_reg(par, 0x0011, 0x220 | vc);
 mdelay(50);
 write_reg(par, 0x0012, vrh);
 mdelay(50);
 write_reg(par, 0x0013, vdv << 8);
 write_reg(par, 0x0029, vcm);
 write_reg(par, 0x002B, 0x000C);
 mdelay(50);
 write_reg(par, 0x0020, 0x0000);
 write_reg(par, 0x0021, 0x0000);


 write_reg(par, 0x0050, 0x0000);
 write_reg(par, 0x0051, 0x00EF);
 write_reg(par, 0x0052, 0x0000);
 write_reg(par, 0x0053, 0x013F);
 write_reg(par, 0x0060, 0xA700);
 write_reg(par, 0x0061, 0x0001);
 write_reg(par, 0x006A, 0x0000);


 write_reg(par, 0x0080, 0x0000);
 write_reg(par, 0x0081, 0x0000);
 write_reg(par, 0x0082, 0x0000);
 write_reg(par, 0x0083, 0x0000);
 write_reg(par, 0x0084, 0x0000);
 write_reg(par, 0x0085, 0x0000);


 write_reg(par, 0x0090, 0x0010);
 write_reg(par, 0x0092, 0x0600);
 write_reg(par, 0x0007, 0x0133);

 return 0;
}
