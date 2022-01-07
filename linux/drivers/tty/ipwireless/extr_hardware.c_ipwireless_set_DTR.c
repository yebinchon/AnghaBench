
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipw_hardware {int dummy; } ;


 int PRIO_CTRL ;
 int set_DTR (struct ipw_hardware*,int ,unsigned int,int) ;

int ipwireless_set_DTR(struct ipw_hardware *hw, unsigned int channel_idx,
         int state)
{
 return set_DTR(hw, PRIO_CTRL, channel_idx, state);
}
