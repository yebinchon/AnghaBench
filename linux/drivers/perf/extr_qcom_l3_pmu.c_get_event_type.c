
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int config; } ;
struct perf_event {TYPE_1__ attr; } ;


 int L3_EVTYPE_MASK ;

__attribute__((used)) static inline u32 get_event_type(struct perf_event *event)
{
 return (event->attr.config) & L3_EVTYPE_MASK;
}
