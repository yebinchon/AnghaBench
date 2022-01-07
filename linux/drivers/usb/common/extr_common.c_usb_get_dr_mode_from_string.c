
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum usb_dr_mode { ____Placeholder_usb_dr_mode } usb_dr_mode ;


 int ARRAY_SIZE (int ) ;
 int USB_DR_MODE_UNKNOWN ;
 int match_string (int ,int ,char const*) ;
 int usb_dr_modes ;

__attribute__((used)) static enum usb_dr_mode usb_get_dr_mode_from_string(const char *str)
{
 int ret;

 ret = match_string(usb_dr_modes, ARRAY_SIZE(usb_dr_modes), str);
 return (ret < 0) ? USB_DR_MODE_UNKNOWN : ret;
}
