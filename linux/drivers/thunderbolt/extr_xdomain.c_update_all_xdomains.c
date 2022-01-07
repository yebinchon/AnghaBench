
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int bus_for_each_dev (int *,int *,int *,int ) ;
 int tb_bus_type ;
 int update_xdomain ;

__attribute__((used)) static void update_all_xdomains(void)
{
 bus_for_each_dev(&tb_bus_type, ((void*)0), ((void*)0), update_xdomain);
}
