
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum xenbus_state { ____Placeholder_xenbus_state } xenbus_state ;


 int ARRAY_SIZE (char const* const*) ;
const char *xenbus_strstate(enum xenbus_state state)
{
 static const char *const name[] = {
  [ 128 ] = "Unknown",
  [ 131 ] = "Initialising",
  [ 133 ] = "InitWait",
  [ 132 ] = "Initialised",
  [ 134 ] = "Connected",
  [ 135 ] = "Closing",
  [ 136 ] = "Closed",
  [129] = "Reconfiguring",
  [130] = "Reconfigured",
 };
 return (state < ARRAY_SIZE(name)) ? name[state] : "INVALID";
}
