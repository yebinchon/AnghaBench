
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipw_hardware {int * control_lines; } ;


 int COMCTRL_DTR ;
 int IPW_CONTROL_LINE_DTR ;
 int set_control_line (struct ipw_hardware*,int,unsigned int,int ,int) ;

__attribute__((used)) static int set_DTR(struct ipw_hardware *hw, int priority,
     unsigned int channel_idx, int state)
{
 if (state != 0)
  hw->control_lines[channel_idx] |= IPW_CONTROL_LINE_DTR;
 else
  hw->control_lines[channel_idx] &= ~IPW_CONTROL_LINE_DTR;

 return set_control_line(hw, priority, channel_idx, COMCTRL_DTR, state);
}
