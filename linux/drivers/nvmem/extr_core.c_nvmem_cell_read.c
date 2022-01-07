
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void u8 ;
struct nvmem_device {int dummy; } ;
struct nvmem_cell {int bytes; struct nvmem_device* nvmem; } ;


 int EINVAL ;
 int ENOMEM ;
 void* ERR_PTR (int) ;
 int GFP_KERNEL ;
 int __nvmem_cell_read (struct nvmem_device*,struct nvmem_cell*,void*,size_t*) ;
 int kfree (void*) ;
 void* kzalloc (int ,int ) ;

void *nvmem_cell_read(struct nvmem_cell *cell, size_t *len)
{
 struct nvmem_device *nvmem = cell->nvmem;
 u8 *buf;
 int rc;

 if (!nvmem)
  return ERR_PTR(-EINVAL);

 buf = kzalloc(cell->bytes, GFP_KERNEL);
 if (!buf)
  return ERR_PTR(-ENOMEM);

 rc = __nvmem_cell_read(nvmem, cell, buf, len);
 if (rc) {
  kfree(buf);
  return ERR_PTR(rc);
 }

 return buf;
}
