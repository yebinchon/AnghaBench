
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* reset ) (struct fbtft_par*) ;} ;
struct fbtft_par {int bgr; TYPE_1__ fbtftops; } ;


 int mdelay (int) ;
 int stub1 (struct fbtft_par*) ;
 int write_reg (struct fbtft_par*,int,int) ;

__attribute__((used)) static int init_display(struct fbtft_par *par)
{
 par->fbtftops.reset(par);


 write_reg(par, 0xEA, 0x00);
 write_reg(par, 0xEB, 0x20);
 write_reg(par, 0xEC, 0x0C);
 write_reg(par, 0xED, 0xC4);
 write_reg(par, 0xE8, 0x40);
 write_reg(par, 0xE9, 0x38);
 write_reg(par, 0xF1, 0x01);
 write_reg(par, 0xF2, 0x10);
 write_reg(par, 0x27, 0xA3);


 write_reg(par, 0x1B, 0x1B);
 write_reg(par, 0x1A, 0x01);
 write_reg(par, 0x24, 0x2F);
 write_reg(par, 0x25, 0x57);


 write_reg(par, 0x23, 0x8D);


 write_reg(par, 0x18, 0x36);
 write_reg(par, 0x19, 0x01);
 write_reg(par, 0x01, 0x00);
 write_reg(par, 0x1F, 0x88);
 mdelay(5);
 write_reg(par, 0x1F, 0x80);
 mdelay(5);
 write_reg(par, 0x1F, 0x90);
 mdelay(5);
 write_reg(par, 0x1F, 0xD0);
 mdelay(5);


 write_reg(par, 0x17, 0x05);


 write_reg(par, 0x36, 0x00);


 write_reg(par, 0x28, 0x38);
 mdelay(40);
 write_reg(par, 0x28, 0x3C);


 write_reg(par, 0x16, 0x60 | (par->bgr << 3));

 return 0;
}
