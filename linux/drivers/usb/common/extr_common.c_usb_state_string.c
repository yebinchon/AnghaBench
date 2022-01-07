
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum usb_device_state { ____Placeholder_usb_device_state } usb_device_state ;


 int ARRAY_SIZE (char const* const*) ;
const char *usb_state_string(enum usb_device_state state)
{
 static const char *const names[] = {
  [132] = "not attached",
  [135] = "attached",
  [131] = "powered",
  [130] = "reconnecting",
  [128] = "unauthenticated",
  [133] = "default",
  [136] = "addressed",
  [134] = "configured",
  [129] = "suspended",
 };

 if (state < 0 || state >= ARRAY_SIZE(names))
  return "UNKNOWN";

 return names[state];
}
