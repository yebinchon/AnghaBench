
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int config_base; } ;
struct perf_event {TYPE_1__ hw; } ;


 int reg_writel (int ,int ) ;

__attribute__((used)) static inline void uncore_stop_event_l3c(struct perf_event *event)
{
 reg_writel(0, event->hw.config_base);
}
