
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int RTD_CLOCK_BASE ;
 int rtd_ns_to_timer_base (unsigned int*,unsigned int,int ) ;

__attribute__((used)) static int rtd_ns_to_timer(unsigned int *ns, unsigned int flags)
{
 return rtd_ns_to_timer_base(ns, flags, RTD_CLOCK_BASE);
}
