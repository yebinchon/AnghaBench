
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvmem_device {int refcnt; } ;


 int kref_put (int *,int ) ;
 int nvmem_device_release ;

void nvmem_unregister(struct nvmem_device *nvmem)
{
 kref_put(&nvmem->refcnt, nvmem_device_release);
}
