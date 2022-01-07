
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int NI_COUNTER_NAMES_BASE ;
 int NI_COUNTER_NAMES_MAX ;

__attribute__((used)) static inline bool channel_is_ctr(int channel)
{
 return channel >= NI_COUNTER_NAMES_BASE &&
        channel <= NI_COUNTER_NAMES_MAX;
}
