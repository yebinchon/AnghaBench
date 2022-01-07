
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ cs; } ;
struct TYPE_3__ {int (* reset ) (struct fbtft_par*) ;} ;
struct fbtft_par {TYPE_2__ gpio; TYPE_1__ fbtftops; } ;


 int gpiod_set_value (scalar_t__,int ) ;
 int stub1 (struct fbtft_par*) ;
 int udelay (int) ;
 int write_reg (struct fbtft_par*,int,int) ;

__attribute__((used)) static int init_display(struct fbtft_par *par)
{
 par->fbtftops.reset(par);

 if (par->gpio.cs)
  gpiod_set_value(par->gpio.cs, 0);




 write_reg(par, 0x0003, 0x0001);


 write_reg(par, 0x003A, 0x0001);
 udelay(100);


 write_reg(par, 0x0024, 0x007B);
 udelay(10);
 write_reg(par, 0x0025, 0x003B);
 write_reg(par, 0x0026, 0x0034);
 udelay(10);
 write_reg(par, 0x0027, 0x0004);
 write_reg(par, 0x0052, 0x0025);
 udelay(10);
 write_reg(par, 0x0053, 0x0033);
 write_reg(par, 0x0061, 0x001C);
 udelay(10);
 write_reg(par, 0x0062, 0x002C);
 write_reg(par, 0x0063, 0x0022);
 udelay(10);
 write_reg(par, 0x0064, 0x0027);
 udelay(10);
 write_reg(par, 0x0065, 0x0014);
 udelay(10);
 write_reg(par, 0x0066, 0x0010);


 write_reg(par, 0x002E, 0x002D);


 write_reg(par, 0x0019, 0x0000);
 udelay(200);
 write_reg(par, 0x001A, 0x1000);
 write_reg(par, 0x001B, 0x0023);
 write_reg(par, 0x001C, 0x0C01);
 write_reg(par, 0x001D, 0x0000);
 write_reg(par, 0x001E, 0x0009);
 write_reg(par, 0x001F, 0x0035);
 write_reg(par, 0x0020, 0x0015);
 write_reg(par, 0x0018, 0x1E7B);


 write_reg(par, 0x0008, 0x0000);
 write_reg(par, 0x0009, 0x00EF);
 write_reg(par, 0x000a, 0x0000);
 write_reg(par, 0x000b, 0x013F);


 write_reg(par, 0x0029, 0x0000);
 write_reg(par, 0x002A, 0x0000);
 write_reg(par, 0x002B, 0x00EF);
 write_reg(par, 0x002C, 0x013F);


 write_reg(par, 0x0032, 0x0002);


 write_reg(par, 0x0033, 0x0000);


 write_reg(par, 0x0037, 0x0000);


 write_reg(par, 0x003B, 0x0001);



 write_reg(par, 0x0004, 0x0000);


 write_reg(par, 0x0005, 0x0000);


 write_reg(par, 0x0001, 0x0000);


 write_reg(par, 0x0000, 0x0000);

 return 0;
}
