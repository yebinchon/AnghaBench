
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvmem_device {int dummy; } ;
struct nvmem_cell_info {int dummy; } ;
struct nvmem_cell {int bytes; } ;


 int EINVAL ;
 int nvmem_cell_info_to_nvmem_cell (struct nvmem_device*,struct nvmem_cell_info*,struct nvmem_cell*) ;
 int nvmem_cell_write (struct nvmem_cell*,void*,int ) ;

int nvmem_device_cell_write(struct nvmem_device *nvmem,
       struct nvmem_cell_info *info, void *buf)
{
 struct nvmem_cell cell;
 int rc;

 if (!nvmem)
  return -EINVAL;

 rc = nvmem_cell_info_to_nvmem_cell(nvmem, info, &cell);
 if (rc)
  return rc;

 return nvmem_cell_write(&cell, buf, cell.bytes);
}
