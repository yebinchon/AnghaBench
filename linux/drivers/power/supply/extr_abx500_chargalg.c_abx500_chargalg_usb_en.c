
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int usb_iset; int usb_vset; } ;
struct abx500_chargalg {TYPE_3__* usb_chg; TYPE_1__ chg_info; } ;
struct TYPE_5__ {int (* enable ) (TYPE_3__*,int,int,int) ;} ;
struct TYPE_6__ {TYPE_2__ ops; scalar_t__ max_out_curr; scalar_t__ max_out_volt; } ;


 int ENXIO ;
 int min (int,scalar_t__) ;
 int stub1 (TYPE_3__*,int,int,int) ;

__attribute__((used)) static int abx500_chargalg_usb_en(struct abx500_chargalg *di, int enable,
 int vset, int iset)
{
 if (!di->usb_chg || !di->usb_chg->ops.enable)
  return -ENXIO;


 if (di->usb_chg->max_out_volt)
  vset = min(vset, di->usb_chg->max_out_volt);
 if (di->usb_chg->max_out_curr)
  iset = min(iset, di->usb_chg->max_out_curr);

 di->chg_info.usb_iset = iset;
 di->chg_info.usb_vset = vset;

 return di->usb_chg->ops.enable(di->usb_chg, enable, vset, iset);
}
