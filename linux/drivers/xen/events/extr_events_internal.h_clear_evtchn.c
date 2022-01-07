
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* clear_pending ) (unsigned int) ;} ;


 TYPE_1__* evtchn_ops ;
 int stub1 (unsigned int) ;

__attribute__((used)) static inline void clear_evtchn(unsigned port)
{
 evtchn_ops->clear_pending(port);
}
