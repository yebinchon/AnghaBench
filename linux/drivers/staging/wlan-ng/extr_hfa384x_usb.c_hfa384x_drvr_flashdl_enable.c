
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int len; int offset; int page; } ;
struct hfa384x {scalar_t__ dlstate; int dltimeout; TYPE_1__ bufinfo; scalar_t__* port_enabled; } ;


 int EINVAL ;
 scalar_t__ HFA384x_DLSTATE_DISABLED ;
 scalar_t__ HFA384x_DLSTATE_FLASHENABLED ;
 int HFA384x_PORTID_MAX ;
 int HFA384x_RID_DOWNLOADBUFFER ;
 int HFA384x_RID_MAXLOADTIME ;
 int hfa384x_drvr_getconfig (struct hfa384x*,int ,TYPE_1__*,int) ;
 int hfa384x_drvr_getconfig16 (struct hfa384x*,int ,int *) ;
 int le16_to_cpus (int *) ;
 int pr_debug (char*) ;

int hfa384x_drvr_flashdl_enable(struct hfa384x *hw)
{
 int result = 0;
 int i;


 for (i = 0; i < HFA384x_PORTID_MAX; i++) {
  if (hw->port_enabled[i]) {
   pr_debug("called when port enabled.\n");
   return -EINVAL;
  }
 }


 if (hw->dlstate != HFA384x_DLSTATE_DISABLED)
  return -EINVAL;


 result = hfa384x_drvr_getconfig(hw, HFA384x_RID_DOWNLOADBUFFER,
     &hw->bufinfo, sizeof(hw->bufinfo));
 if (result)
  return result;

 le16_to_cpus(&hw->bufinfo.page);
 le16_to_cpus(&hw->bufinfo.offset);
 le16_to_cpus(&hw->bufinfo.len);
 result = hfa384x_drvr_getconfig16(hw, HFA384x_RID_MAXLOADTIME,
       &hw->dltimeout);
 if (result)
  return result;

 le16_to_cpus(&hw->dltimeout);

 pr_debug("flashdl_enable\n");

 hw->dlstate = HFA384x_DLSTATE_FLASHENABLED;

 return result;
}
