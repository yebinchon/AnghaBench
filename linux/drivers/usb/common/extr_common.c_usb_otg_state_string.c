
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum usb_otg_state { ____Placeholder_usb_otg_state } usb_otg_state ;


 int ARRAY_SIZE (char const* const*) ;
const char *usb_otg_state_string(enum usb_otg_state state)
{
 static const char *const names[] = {
  [139] = "a_idle",
  [133] = "a_wait_vrise",
  [135] = "a_wait_bcon",
  [140] = "a_host",
  [137] = "a_suspend",
  [138] = "a_peripheral",
  [134] = "a_wait_vfall",
  [136] = "a_vbus_err",
  [131] = "b_idle",
  [129] = "b_srp_init",
  [130] = "b_peripheral",
  [128] = "b_wait_acon",
  [132] = "b_host",
 };

 if (state < 0 || state >= ARRAY_SIZE(names))
  return "UNDEFINED";

 return names[state];
}
