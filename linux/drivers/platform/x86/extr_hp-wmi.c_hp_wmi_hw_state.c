
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int HPWMI_HARDWARE_QUERY ;
 int hp_wmi_read_int (int ) ;

__attribute__((used)) static int hp_wmi_hw_state(int mask)
{
 int state = hp_wmi_read_int(HPWMI_HARDWARE_QUERY);

 if (state < 0)
  return state;

 return !!(state & mask);
}
