
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__* ni_device_routes_list ;
 int ni_sort_device_routes (scalar_t__) ;

__attribute__((used)) static void ni_sort_all_device_routes(void)
{
 unsigned int i;

 for (i = 0; ni_device_routes_list[i]; ++i)
  ni_sort_device_routes(ni_device_routes_list[i]);
}
