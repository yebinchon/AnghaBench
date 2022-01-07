
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hfa384x {scalar_t__ dlstate; } ;


 int EINVAL ;
 scalar_t__ HFA384x_DLSTATE_DISABLED ;
 scalar_t__ HFA384x_DLSTATE_RAMENABLED ;
 int HFA384x_PROGMODE_DISABLE ;
 int hfa384x_cmd_download (struct hfa384x*,int ,int ,int ,int ) ;
 int pr_debug (char*) ;

int hfa384x_drvr_ramdl_disable(struct hfa384x *hw)
{

 if (hw->dlstate != HFA384x_DLSTATE_RAMENABLED)
  return -EINVAL;

 pr_debug("ramdl_disable()\n");



 hfa384x_cmd_download(hw, HFA384x_PROGMODE_DISABLE, 0, 0, 0);
 hw->dlstate = HFA384x_DLSTATE_DISABLED;

 return 0;
}
