
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aac_driver_ident {int dummy; } ;


 struct aac_driver_ident* aac_drivers ;

struct aac_driver_ident* aac_get_driver_ident(int devtype)
{
 return &aac_drivers[devtype];
}
