
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int config1; } ;
struct perf_event {TYPE_1__ attr; } ;



__attribute__((used)) static u32 ddr_perf_filter_val(struct perf_event *event)
{
 return event->attr.config1;
}
