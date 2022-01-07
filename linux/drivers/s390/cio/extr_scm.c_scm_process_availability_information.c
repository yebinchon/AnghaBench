
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int bus_for_each_dev (int *,int *,int *,int ) ;
 int scm_bus_type ;
 int scm_dev_avail ;

int scm_process_availability_information(void)
{
 return bus_for_each_dev(&scm_bus_type, ((void*)0), ((void*)0), scm_dev_avail);
}
