
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* max_channels ) () ;} ;


 TYPE_1__* evtchn_ops ;
 int stub1 () ;

__attribute__((used)) static inline unsigned xen_evtchn_max_channels(void)
{
 return evtchn_ops->max_channels();
}
