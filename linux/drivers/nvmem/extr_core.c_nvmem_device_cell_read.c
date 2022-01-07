
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvmem_device {int dummy; } ;
struct nvmem_cell_info {int dummy; } ;
struct nvmem_cell {int dummy; } ;
typedef int ssize_t ;


 int EINVAL ;
 int __nvmem_cell_read (struct nvmem_device*,struct nvmem_cell*,void*,int*) ;
 int nvmem_cell_info_to_nvmem_cell (struct nvmem_device*,struct nvmem_cell_info*,struct nvmem_cell*) ;

ssize_t nvmem_device_cell_read(struct nvmem_device *nvmem,
      struct nvmem_cell_info *info, void *buf)
{
 struct nvmem_cell cell;
 int rc;
 ssize_t len;

 if (!nvmem)
  return -EINVAL;

 rc = nvmem_cell_info_to_nvmem_cell(nvmem, info, &cell);
 if (rc)
  return rc;

 rc = __nvmem_cell_read(nvmem, &cell, buf, &len);
 if (rc)
  return rc;

 return len;
}
