
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ni_route_tables {int dummy; } ;


 int memset (struct ni_route_tables*,int ,int) ;
 int ni_find_device_routes (char const*,char const*,struct ni_route_tables*) ;

int ni_assign_device_routes(const char *device_family,
       const char *board_name,
       struct ni_route_tables *tables)
{
 memset(tables, 0, sizeof(struct ni_route_tables));
 return ni_find_device_routes(device_family, board_name, tables);
}
