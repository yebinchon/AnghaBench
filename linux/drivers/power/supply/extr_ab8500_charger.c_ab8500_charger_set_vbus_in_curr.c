
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ usb_current; } ;
struct TYPE_7__ {scalar_t__ set_max; } ;
struct ab8500_charger {int usb_ipt_crnt_lock; int dev; int vbat; TYPE_4__ usb_state; TYPE_3__ max_usb_in_curr; TYPE_2__* bm; } ;
struct TYPE_6__ {TYPE_1__* chg_params; } ;
struct TYPE_5__ {scalar_t__ usb_curr_max; } ;


 int AB8500_USBCH_IPT_CRNTLVL_REG ;
 int USB_CH_IP_CUR_LVL_0P05 ;
 int USB_CH_IP_CUR_LVL_0P45 ;
 int VBAT_TRESH_IP_CUR_RED ;
 int ab8500_charger_set_current (struct ab8500_charger*,int,int ) ;
 int dev_info (int ,char*,int) ;
 int min (scalar_t__,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int ab8500_charger_set_vbus_in_curr(struct ab8500_charger *di,
  int ich_in)
{
 int min_value;
 int ret;


 min_value = min(di->bm->chg_params->usb_curr_max, ich_in);
 if (di->max_usb_in_curr.set_max > 0)
  min_value = min(di->max_usb_in_curr.set_max, min_value);

 if (di->usb_state.usb_current >= 0)
  min_value = min(di->usb_state.usb_current, min_value);

 switch (min_value) {
 case 100:
  if (di->vbat < VBAT_TRESH_IP_CUR_RED)
   min_value = USB_CH_IP_CUR_LVL_0P05;
  break;
 case 500:
  if (di->vbat < VBAT_TRESH_IP_CUR_RED)
   min_value = USB_CH_IP_CUR_LVL_0P45;
  break;
 default:
  break;
 }

 dev_info(di->dev, "VBUS input current limit set to %d mA\n", min_value);

 mutex_lock(&di->usb_ipt_crnt_lock);
 ret = ab8500_charger_set_current(di, min_value,
  AB8500_USBCH_IPT_CRNTLVL_REG);
 mutex_unlock(&di->usb_ipt_crnt_lock);

 return ret;
}
