
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;



__attribute__((used)) static int
armpmu_map_raw_event(u32 raw_event_mask, u64 config)
{
 return (int)(config & raw_event_mask);
}
