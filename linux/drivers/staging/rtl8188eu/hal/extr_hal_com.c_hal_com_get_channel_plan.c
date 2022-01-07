
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int CHAN_PLAN_HW ;
 int rtw_is_channel_plan_valid (int) ;

u8 hal_com_get_channel_plan(u8 hw_channel_plan, u8 sw_channel_plan,
       u8 def_channel_plan, bool load_fail)
{
 u8 sw_cfg;
 u8 chnlplan;

 sw_cfg = 1;
 if (!load_fail) {
  if (!rtw_is_channel_plan_valid(sw_channel_plan))
   sw_cfg = 0;
  if (hw_channel_plan & CHAN_PLAN_HW)
   sw_cfg = 0;
 }

 if (sw_cfg)
  chnlplan = sw_channel_plan;
 else
  chnlplan = hw_channel_plan & (~CHAN_PLAN_HW);

 if (!rtw_is_channel_plan_valid(chnlplan))
  chnlplan = def_channel_plan;

 return chnlplan;
}
