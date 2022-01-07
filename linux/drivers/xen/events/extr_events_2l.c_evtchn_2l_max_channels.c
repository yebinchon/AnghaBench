
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EVTCHN_2L_NR_CHANNELS ;

__attribute__((used)) static unsigned evtchn_2l_max_channels(void)
{
 return EVTCHN_2L_NR_CHANNELS;
}
