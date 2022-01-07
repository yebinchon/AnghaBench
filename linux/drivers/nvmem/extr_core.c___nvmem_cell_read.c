
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvmem_device {int dummy; } ;
struct nvmem_cell {size_t bytes; scalar_t__ nbits; scalar_t__ bit_offset; int offset; } ;


 int nvmem_reg_read (struct nvmem_device*,int ,void*,size_t) ;
 int nvmem_shift_read_buffer_in_place (struct nvmem_cell*,void*) ;

__attribute__((used)) static int __nvmem_cell_read(struct nvmem_device *nvmem,
        struct nvmem_cell *cell,
        void *buf, size_t *len)
{
 int rc;

 rc = nvmem_reg_read(nvmem, cell->offset, buf, cell->bytes);

 if (rc)
  return rc;


 if (cell->bit_offset || cell->nbits)
  nvmem_shift_read_buffer_in_place(cell, buf);

 if (len)
  *len = cell->bytes;

 return 0;
}
