
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {void (* unmask ) (unsigned int) ;} ;


 TYPE_1__* evtchn_ops ;
 void stub1 (unsigned int) ;

__attribute__((used)) static inline void unmask_evtchn(unsigned port)
{
 return evtchn_ops->unmask(port);
}
