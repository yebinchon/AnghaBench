
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int (* write ) (struct fbtft_par*,void*,size_t) ;} ;
struct TYPE_4__ {scalar_t__ dc; } ;
struct fbtft_par {TYPE_3__* info; TYPE_2__ fbtftops; TYPE_1__ gpio; } ;
struct TYPE_6__ {int device; } ;


 int dev_err (int ,char*,int) ;
 int gpiod_set_value (scalar_t__,int) ;
 int stub1 (struct fbtft_par*,void*,size_t) ;

int fbtft_write_buf_dc(struct fbtft_par *par, void *buf, size_t len, int dc)
{
 int ret;

 if (par->gpio.dc)
  gpiod_set_value(par->gpio.dc, dc);

 ret = par->fbtftops.write(par, buf, len);
 if (ret < 0)
  dev_err(par->info->device,
   "write() failed and returned %d\n", ret);
 return ret;
}
