
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int config; } ;
struct perf_event {TYPE_1__ attr; } ;


 int BIT_ULL (int ) ;
 int L3_EVENT_LC_BIT ;

__attribute__((used)) static inline bool event_uses_long_counter(struct perf_event *event)
{
 return !!(event->attr.config & BIT_ULL(L3_EVENT_LC_BIT));
}
