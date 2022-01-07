
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* resume ) () ;} ;


 TYPE_1__* evtchn_ops ;
 int stub1 () ;

__attribute__((used)) static inline void xen_evtchn_resume(void)
{
 if (evtchn_ops->resume)
  evtchn_ops->resume();
}
