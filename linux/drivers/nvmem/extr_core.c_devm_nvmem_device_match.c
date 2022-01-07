
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void nvmem_device ;
struct device {int dummy; } ;


 scalar_t__ WARN_ON (int) ;

__attribute__((used)) static int devm_nvmem_device_match(struct device *dev, void *res, void *data)
{
 struct nvmem_device **nvmem = res;

 if (WARN_ON(!nvmem || !*nvmem))
  return 0;

 return *nvmem == data;
}
