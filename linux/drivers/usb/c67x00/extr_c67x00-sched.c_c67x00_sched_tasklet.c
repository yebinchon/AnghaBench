
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct c67x00_hcd {int dummy; } ;


 int c67x00_do_work (struct c67x00_hcd*) ;

__attribute__((used)) static void c67x00_sched_tasklet(unsigned long __c67x00)
{
 struct c67x00_hcd *c67x00 = (struct c67x00_hcd *)__c67x00;
 c67x00_do_work(c67x00);
}
