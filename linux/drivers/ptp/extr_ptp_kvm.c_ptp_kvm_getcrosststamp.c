
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct system_device_crosststamp {int dummy; } ;
struct ptp_clock_info {int dummy; } ;


 int get_device_system_crosststamp (int ,int *,int *,struct system_device_crosststamp*) ;
 int ptp_kvm_get_time_fn ;

__attribute__((used)) static int ptp_kvm_getcrosststamp(struct ptp_clock_info *ptp,
      struct system_device_crosststamp *xtstamp)
{
 return get_device_system_crosststamp(ptp_kvm_get_time_fn, ((void*)0),
          ((void*)0), xtstamp);
}
