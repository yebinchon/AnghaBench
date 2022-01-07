
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvmem_device {int stride; int dev; } ;
struct nvmem_cell_info {scalar_t__ nbits; scalar_t__ bit_offset; int name; int bytes; int offset; } ;
struct nvmem_cell {int name; int offset; scalar_t__ bit_offset; scalar_t__ nbits; int bytes; struct nvmem_device* nvmem; } ;


 int BITS_PER_BYTE ;
 int DIV_ROUND_UP (scalar_t__,int ) ;
 int EINVAL ;
 int IS_ALIGNED (int ,int ) ;
 int dev_err (int *,char*,int ,int ) ;

__attribute__((used)) static int nvmem_cell_info_to_nvmem_cell(struct nvmem_device *nvmem,
       const struct nvmem_cell_info *info,
       struct nvmem_cell *cell)
{
 cell->nvmem = nvmem;
 cell->offset = info->offset;
 cell->bytes = info->bytes;
 cell->name = info->name;

 cell->bit_offset = info->bit_offset;
 cell->nbits = info->nbits;

 if (cell->nbits)
  cell->bytes = DIV_ROUND_UP(cell->nbits + cell->bit_offset,
        BITS_PER_BYTE);

 if (!IS_ALIGNED(cell->offset, nvmem->stride)) {
  dev_err(&nvmem->dev,
   "cell %s unaligned to nvmem stride %d\n",
   cell->name, nvmem->stride);
  return -EINVAL;
 }

 return 0;
}
