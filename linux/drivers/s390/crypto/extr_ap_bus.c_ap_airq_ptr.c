
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {void* lsi_ptr; } ;


 TYPE_1__ ap_airq ;
 scalar_t__ ap_using_interrupts () ;

void *ap_airq_ptr(void)
{
 if (ap_using_interrupts())
  return ap_airq.lsi_ptr;
 return ((void*)0);
}
