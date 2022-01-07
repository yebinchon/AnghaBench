
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum gr_ep0state { ____Placeholder_gr_ep0state } gr_ep0state ;


 int ARRAY_SIZE (char const* const*) ;
__attribute__((used)) static const char *gr_ep0state_string(enum gr_ep0state state)
{
 static const char *const names[] = {
  [135] = "disconnect",
  [130] = "setup",
  [134] = "idata",
  [132] = "odata",
  [133] = "istatus",
  [131] = "ostatus",
  [129] = "stall",
  [128] = "suspend",
 };

 if (state < 0 || state >= ARRAY_SIZE(names))
  return "UNKNOWN";

 return names[state];
}
