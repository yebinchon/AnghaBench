
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u16 ;
struct hfa384x {scalar_t__* port_enabled; scalar_t__ isap; } ;


 int EINVAL ;
 size_t HFA384x_PORTID_MAX ;
 int hfa384x_cmd_disable (struct hfa384x*,size_t) ;

int hfa384x_drvr_disable(struct hfa384x *hw, u16 macport)
{
 int result = 0;

 if ((!hw->isap && macport != 0) ||
     (hw->isap && !(macport <= HFA384x_PORTID_MAX)) ||
     !(hw->port_enabled[macport])) {
  result = -EINVAL;
 } else {
  result = hfa384x_cmd_disable(hw, macport);
  if (result == 0)
   hw->port_enabled[macport] = 0;
 }
 return result;
}
