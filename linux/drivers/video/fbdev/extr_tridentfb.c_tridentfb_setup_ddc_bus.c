
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int parent; } ;
struct TYPE_9__ {TYPE_2__ dev; TYPE_3__* algo_data; int class; int owner; int name; } ;
struct TYPE_8__ {int udelay; int timeout; struct tridentfb_par* data; int getscl; int getsda; int setscl; int setsda; } ;
struct tridentfb_par {TYPE_4__ ddc_adapter; TYPE_3__ ddc_algo; int chip_id; } ;
struct TYPE_6__ {int id; } ;
struct fb_info {int device; TYPE_1__ fix; struct tridentfb_par* par; } ;


 int I2C_CLASS_DDC ;
 int THIS_MODULE ;
 int i2c_bit_add_bus (TYPE_4__*) ;
 int i2c_set_adapdata (TYPE_4__*,struct tridentfb_par*) ;
 scalar_t__ is_oldclock (int ) ;
 int strlcpy (int ,int ,int) ;
 int tridentfb_ddc_getscl ;
 int tridentfb_ddc_getsda ;
 int tridentfb_ddc_getsda_tgui ;
 int tridentfb_ddc_setscl ;
 int tridentfb_ddc_setscl_tgui ;
 int tridentfb_ddc_setsda ;
 int tridentfb_ddc_setsda_tgui ;

__attribute__((used)) static int tridentfb_setup_ddc_bus(struct fb_info *info)
{
 struct tridentfb_par *par = info->par;

 strlcpy(par->ddc_adapter.name, info->fix.id,
  sizeof(par->ddc_adapter.name));
 par->ddc_adapter.owner = THIS_MODULE;
 par->ddc_adapter.class = I2C_CLASS_DDC;
 par->ddc_adapter.algo_data = &par->ddc_algo;
 par->ddc_adapter.dev.parent = info->device;
 if (is_oldclock(par->chip_id)) {
  par->ddc_algo.setsda = tridentfb_ddc_setsda_tgui;
  par->ddc_algo.setscl = tridentfb_ddc_setscl_tgui;
  par->ddc_algo.getsda = tridentfb_ddc_getsda_tgui;

 } else {
  par->ddc_algo.setsda = tridentfb_ddc_setsda;
  par->ddc_algo.setscl = tridentfb_ddc_setscl;
  par->ddc_algo.getsda = tridentfb_ddc_getsda;
  par->ddc_algo.getscl = tridentfb_ddc_getscl;
 }
 par->ddc_algo.udelay = 10;
 par->ddc_algo.timeout = 20;
 par->ddc_algo.data = par;

 i2c_set_adapdata(&par->ddc_adapter, par);

 return i2c_bit_add_bus(&par->ddc_adapter);
}
