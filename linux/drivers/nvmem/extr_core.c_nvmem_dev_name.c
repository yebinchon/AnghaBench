
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvmem_device {int dev; } ;


 char const* dev_name (int *) ;

const char *nvmem_dev_name(struct nvmem_device *nvmem)
{
 return dev_name(&nvmem->dev);
}
