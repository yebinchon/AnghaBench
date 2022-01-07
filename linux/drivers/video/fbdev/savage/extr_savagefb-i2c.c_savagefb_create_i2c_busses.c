
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {void* getscl; void* getsda; void* setscl; void* setsda; } ;
struct TYPE_8__ {struct savagefb_par* par; TYPE_3__ algo; int ioaddr; void* reg; } ;
struct TYPE_6__ {int vbase; } ;
struct savagefb_par {int chip; TYPE_4__ chan; TYPE_2__ mmio; TYPE_1__* pcidev; } ;
struct fb_info {struct savagefb_par* par; } ;
struct TYPE_5__ {int revision; } ;


 void* CR_SERIAL1 ;
 void* CR_SERIAL2 ;
 void* MM_SERIAL1 ;





 int VGArCR (int,struct savagefb_par*) ;
 void* prosavage_gpio_getscl ;
 void* prosavage_gpio_getsda ;
 void* prosavage_gpio_setscl ;
 void* prosavage_gpio_setsda ;
 void* savage4_gpio_getscl ;
 void* savage4_gpio_getsda ;
 void* savage4_gpio_setscl ;
 void* savage4_gpio_setsda ;
 int savage_setup_i2c_bus (TYPE_4__*,char*) ;

void savagefb_create_i2c_busses(struct fb_info *info)
{
 struct savagefb_par *par = info->par;
 par->chan.par = par;

 switch (par->chip) {
 case 132:
 case 131:
 case 128:
  par->chan.reg = CR_SERIAL2;
  par->chan.ioaddr = par->mmio.vbase;
  par->chan.algo.setsda = prosavage_gpio_setsda;
  par->chan.algo.setscl = prosavage_gpio_setscl;
  par->chan.algo.getsda = prosavage_gpio_getsda;
  par->chan.algo.getscl = prosavage_gpio_getscl;
  break;
 case 129:
  par->chan.reg = CR_SERIAL1;
  if (par->pcidev->revision > 1 && !(VGArCR(0xa6, par) & 0x40))
   par->chan.reg = CR_SERIAL2;
  par->chan.ioaddr = par->mmio.vbase;
  par->chan.algo.setsda = prosavage_gpio_setsda;
  par->chan.algo.setscl = prosavage_gpio_setscl;
  par->chan.algo.getsda = prosavage_gpio_getsda;
  par->chan.algo.getscl = prosavage_gpio_getscl;
  break;
 case 130:
  par->chan.reg = MM_SERIAL1;
  par->chan.ioaddr = par->mmio.vbase;
  par->chan.algo.setsda = savage4_gpio_setsda;
  par->chan.algo.setscl = savage4_gpio_setscl;
  par->chan.algo.getsda = savage4_gpio_getsda;
  par->chan.algo.getscl = savage4_gpio_getscl;
  break;
 default:
  par->chan.par = ((void*)0);
 }

 savage_setup_i2c_bus(&par->chan, "SAVAGE DDC2");
}
