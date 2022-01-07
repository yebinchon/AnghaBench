
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ state; } ;


 scalar_t__ RUNSTATE_runnable ;
 TYPE_1__ per_cpu (int ,int) ;
 int xen_runstate ;

bool xen_vcpu_stolen(int vcpu)
{
 return per_cpu(xen_runstate, vcpu).state == RUNSTATE_runnable;
}
