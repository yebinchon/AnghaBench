
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gasket_sysfs_mapping {int dummy; } ;


 int put_mapping (struct gasket_sysfs_mapping*) ;

__attribute__((used)) static void put_mapping_n(struct gasket_sysfs_mapping *mapping, int times)
{
 int i;

 for (i = 0; i < times; i++)
  put_mapping(mapping);
}
