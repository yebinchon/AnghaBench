
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvmem_device {scalar_t__ read_only; } ;
struct nvmem_cell {scalar_t__ bit_offset; size_t bytes; scalar_t__ nbits; int offset; struct nvmem_device* nvmem; } ;


 int EINVAL ;
 scalar_t__ IS_ERR (void*) ;
 int PTR_ERR (void*) ;
 int kfree (void*) ;
 void* nvmem_cell_prepare_write_buffer (struct nvmem_cell*,void*,size_t) ;
 int nvmem_reg_write (struct nvmem_device*,int ,void*,size_t) ;

int nvmem_cell_write(struct nvmem_cell *cell, void *buf, size_t len)
{
 struct nvmem_device *nvmem = cell->nvmem;
 int rc;

 if (!nvmem || nvmem->read_only ||
     (cell->bit_offset == 0 && len != cell->bytes))
  return -EINVAL;

 if (cell->bit_offset || cell->nbits) {
  buf = nvmem_cell_prepare_write_buffer(cell, buf, len);
  if (IS_ERR(buf))
   return PTR_ERR(buf);
 }

 rc = nvmem_reg_write(nvmem, cell->offset, buf, cell->bytes);


 if (cell->bit_offset || cell->nbits)
  kfree(buf);

 if (rc)
  return rc;

 return len;
}
