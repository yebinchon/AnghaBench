
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int reset; } ;
struct fbtft_par {TYPE_2__* info; TYPE_1__ gpio; } ;
struct TYPE_4__ {int device; } ;


 int EINVAL ;
 int dev_err (int ,char*) ;

__attribute__((used)) static int verify_gpios(struct fbtft_par *par)
{
 if (!par->gpio.reset) {
  dev_err(par->info->device, "Missing 'reset' gpio. Aborting.\n");
  return -EINVAL;
 }
 return 0;
}
