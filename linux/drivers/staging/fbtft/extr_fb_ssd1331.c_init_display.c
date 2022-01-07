
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int (* reset ) (struct fbtft_par*) ;} ;
struct fbtft_par {int bgr; TYPE_3__* info; TYPE_1__ fbtftops; } ;
struct TYPE_5__ {int rotate; } ;
struct TYPE_6__ {TYPE_2__ var; } ;


 int stub1 (struct fbtft_par*) ;
 int write_reg (struct fbtft_par*,int,...) ;

__attribute__((used)) static int init_display(struct fbtft_par *par)
{
 par->fbtftops.reset(par);

 write_reg(par, 0xae);


 if (par->info->var.rotate == 180)
  write_reg(par, 0xa0, 0x60 | (par->bgr << 2));
 else
  write_reg(par, 0xa0, 0x72 | (par->bgr << 2));

 write_reg(par, 0x72);
 write_reg(par, 0xa1, 0x00);
 write_reg(par, 0xa2, 0x00);
 write_reg(par, 0xa4);
 write_reg(par, 0xa8, 0x3f);
 write_reg(par, 0xad, 0x8e);

 write_reg(par, 0xb1, 0x31);
 write_reg(par, 0xb3, 0xf0);
 write_reg(par, 0x8a, 0x64);
 write_reg(par, 0x8b, 0x78);
 write_reg(par, 0x8c, 0x64);
 write_reg(par, 0xbb, 0x3a);
 write_reg(par, 0xbe, 0x3e);
 write_reg(par, 0x87, 0x06);
 write_reg(par, 0x81, 0x91);
 write_reg(par, 0x82, 0x50);
 write_reg(par, 0x83, 0x7d);
 write_reg(par, 0xaf);

 return 0;
}
