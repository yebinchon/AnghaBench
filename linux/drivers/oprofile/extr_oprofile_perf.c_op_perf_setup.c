
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct perf_event_attr {int size; int pinned; int sample_period; int config; int type; } ;
struct TYPE_2__ {int count; int event; struct perf_event_attr attr; } ;


 int PERF_TYPE_RAW ;
 TYPE_1__* counter_config ;
 int memset (struct perf_event_attr*,int ,int) ;
 int num_counters ;

__attribute__((used)) static void op_perf_setup(void)
{
 int i;
 u32 size = sizeof(struct perf_event_attr);
 struct perf_event_attr *attr;

 for (i = 0; i < num_counters; ++i) {
  attr = &counter_config[i].attr;
  memset(attr, 0, size);
  attr->type = PERF_TYPE_RAW;
  attr->size = size;
  attr->config = counter_config[i].event;
  attr->sample_period = counter_config[i].count;
  attr->pinned = 1;
 }
}
