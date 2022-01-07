
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvmem_device {int dummy; } ;


 int EINVAL ;
 int nvmem_reg_read (struct nvmem_device*,unsigned int,void*,size_t) ;

int nvmem_device_read(struct nvmem_device *nvmem,
        unsigned int offset,
        size_t bytes, void *buf)
{
 int rc;

 if (!nvmem)
  return -EINVAL;

 rc = nvmem_reg_read(nvmem, offset, buf, bytes);

 if (rc)
  return rc;

 return bytes;
}
