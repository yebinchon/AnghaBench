
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ARRAY_SIZE (char const**) ;
 char const** ep_type_names ;

const char *usb_ep_type_string(int ep_type)
{
 if (ep_type < 0 || ep_type >= ARRAY_SIZE(ep_type_names))
  return "unknown";

 return ep_type_names[ep_type];
}
