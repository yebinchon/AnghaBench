
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvmem_device {int refcnt; int owner; int dev; } ;


 int kref_put (int *,int ) ;
 int module_put (int ) ;
 int nvmem_device_release ;
 int put_device (int *) ;

__attribute__((used)) static void __nvmem_device_put(struct nvmem_device *nvmem)
{
 put_device(&nvmem->dev);
 module_put(nvmem->owner);
 kref_put(&nvmem->refcnt, nvmem_device_release);
}
