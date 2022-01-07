
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int * type; } ;


 int namespace_pmem_device_type ;

__attribute__((used)) static bool is_namespace_pmem(const struct device *dev)
{
 return dev ? dev->type == &namespace_pmem_device_type : 0;
}
