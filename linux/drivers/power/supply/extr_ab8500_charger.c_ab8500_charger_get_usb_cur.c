
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int usb_type_max; int set_max; } ;
struct TYPE_3__ {int usb_current; } ;
struct ab8500_charger {TYPE_2__ max_usb_in_curr; TYPE_1__ usb_state; } ;


 int EPERM ;
 int USB_CH_IP_CUR_LVL_0P05 ;
 int USB_CH_IP_CUR_LVL_0P09 ;
 int USB_CH_IP_CUR_LVL_0P19 ;
 int USB_CH_IP_CUR_LVL_0P29 ;
 int USB_CH_IP_CUR_LVL_0P38 ;
 int USB_CH_IP_CUR_LVL_0P5 ;

__attribute__((used)) static int ab8500_charger_get_usb_cur(struct ab8500_charger *di)
{
 int ret = 0;
 switch (di->usb_state.usb_current) {
 case 100:
  di->max_usb_in_curr.usb_type_max = USB_CH_IP_CUR_LVL_0P09;
  break;
 case 200:
  di->max_usb_in_curr.usb_type_max = USB_CH_IP_CUR_LVL_0P19;
  break;
 case 300:
  di->max_usb_in_curr.usb_type_max = USB_CH_IP_CUR_LVL_0P29;
  break;
 case 400:
  di->max_usb_in_curr.usb_type_max = USB_CH_IP_CUR_LVL_0P38;
  break;
 case 500:
  di->max_usb_in_curr.usb_type_max = USB_CH_IP_CUR_LVL_0P5;
  break;
 default:
  di->max_usb_in_curr.usb_type_max = USB_CH_IP_CUR_LVL_0P05;
  ret = -EPERM;
  break;
 };
 di->max_usb_in_curr.set_max = di->max_usb_in_curr.usb_type_max;
 return ret;
}
