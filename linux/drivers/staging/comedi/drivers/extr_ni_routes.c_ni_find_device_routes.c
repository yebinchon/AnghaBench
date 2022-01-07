
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct ni_route_tables {struct ni_device_routes const* valid_routes; int const* route_values; } ;
struct ni_device_routes {int device; } ;
struct TYPE_2__ {int ** register_values; int family; } ;


 int ENODATA ;
 scalar_t__ memcmp (int ,char const*,int ) ;
 TYPE_1__** ni_all_route_values ;
 struct ni_device_routes** ni_device_routes_list ;
 int strnlen (char const*,int) ;

__attribute__((used)) static int ni_find_device_routes(const char *device_family,
     const char *board_name,
     struct ni_route_tables *tables)
{
 const struct ni_device_routes *dr = ((void*)0);
 const u8 *rv = ((void*)0);
 int i;


 for (i = 0; ni_all_route_values[i]; ++i) {
  if (memcmp(ni_all_route_values[i]->family, device_family,
      strnlen(device_family, 30)) == 0) {
   rv = &ni_all_route_values[i]->register_values[0][0];
   break;
  }
 }

 if (!rv)
  return -ENODATA;


 for (i = 0; ni_device_routes_list[i]; ++i) {
  if (memcmp(ni_device_routes_list[i]->device, board_name,
      strnlen(board_name, 30)) == 0) {
   dr = ni_device_routes_list[i];
   break;
  }
 }

 if (!dr)
  return -ENODATA;

 tables->route_values = rv;
 tables->valid_routes = dr;

 return 0;
}
