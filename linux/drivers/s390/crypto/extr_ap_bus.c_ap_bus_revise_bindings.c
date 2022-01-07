
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __ap_revise_reserved ;
 int ap_bus_type ;
 int bus_for_each_dev (int *,int *,int *,int ) ;

__attribute__((used)) static void ap_bus_revise_bindings(void)
{
 bus_for_each_dev(&ap_bus_type, ((void*)0), ((void*)0), __ap_revise_reserved);
}
