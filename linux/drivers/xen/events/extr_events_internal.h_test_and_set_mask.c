
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* test_and_set_mask ) (unsigned int) ;} ;


 TYPE_1__* evtchn_ops ;
 int stub1 (unsigned int) ;

__attribute__((used)) static inline bool test_and_set_mask(unsigned port)
{
 return evtchn_ops->test_and_set_mask(port);
}
