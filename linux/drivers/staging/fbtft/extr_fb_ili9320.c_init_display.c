
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int (* reset ) (struct fbtft_par*) ;} ;
struct fbtft_par {TYPE_2__* info; TYPE_1__ fbtftops; } ;
struct TYPE_4__ {int device; } ;


 int DEBUG_INIT_DISPLAY ;
 int dev_warn (int ,char*,unsigned int) ;
 int fbtft_par_dbg (int ,struct fbtft_par*,char*,unsigned int) ;
 int mdelay (int) ;
 unsigned int read_devicecode (struct fbtft_par*) ;
 int stub1 (struct fbtft_par*) ;
 int write_reg (struct fbtft_par*,int,int) ;

__attribute__((used)) static int init_display(struct fbtft_par *par)
{
 unsigned int devcode;

 par->fbtftops.reset(par);

 devcode = read_devicecode(par);
 fbtft_par_dbg(DEBUG_INIT_DISPLAY, par, "Device code: 0x%04X\n",
        devcode);
 if ((devcode != 0x0000) && (devcode != 0x9320))
  dev_warn(par->info->device,
    "Unrecognized Device code: 0x%04X (expected 0x9320)\n",
   devcode);





 write_reg(par, 0x00E5, 0x8000);


 write_reg(par, 0x0000, 0x0001);


 write_reg(par, 0x0001, 0x0100);


 write_reg(par, 0x0002, 0x0700);


 write_reg(par, 0x0004, 0x0000);


 write_reg(par, 0x0008, 0x0202);


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


 write_reg(par, 0x0010, 0x17B0);


 write_reg(par, 0x0011, 0x0031);
 mdelay(50);


 write_reg(par, 0x0012, 0x0138);
 mdelay(50);


 write_reg(par, 0x0013, 0x1800);


 write_reg(par, 0x0029, 0x0008);
 mdelay(50);


 write_reg(par, 0x0020, 0x0000);


 write_reg(par, 0x0021, 0x0000);



 write_reg(par, 0x0050, 0x0000);


 write_reg(par, 0x0051, 0x00EF);


 write_reg(par, 0x0052, 0x0000);


 write_reg(par, 0x0053, 0x013F);


 write_reg(par, 0x0060, 0x2700);


 write_reg(par, 0x0061, 0x0001);


 write_reg(par, 0x006A, 0x0000);


 write_reg(par, 0x0080, 0x0000);
 write_reg(par, 0x0081, 0x0000);
 write_reg(par, 0x0082, 0x0000);
 write_reg(par, 0x0083, 0x0000);
 write_reg(par, 0x0084, 0x0000);
 write_reg(par, 0x0085, 0x0000);


 write_reg(par, 0x0090, 0x0010);
 write_reg(par, 0x0092, 0x0000);
 write_reg(par, 0x0093, 0x0003);
 write_reg(par, 0x0095, 0x0110);
 write_reg(par, 0x0097, 0x0000);
 write_reg(par, 0x0098, 0x0000);
 write_reg(par, 0x0007, 0x0173);

 return 0;
}
