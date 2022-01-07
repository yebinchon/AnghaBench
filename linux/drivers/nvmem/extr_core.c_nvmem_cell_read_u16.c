
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
typedef void nvmem_cell ;
struct device {int dummy; } ;


 int EINVAL ;
 scalar_t__ IS_ERR (void*) ;
 int PTR_ERR (void*) ;
 int kfree (void*) ;
 int memcpy (int *,void*,int) ;
 void* nvmem_cell_get (struct device*,char const*) ;
 int nvmem_cell_put (void*) ;
 void* nvmem_cell_read (void*,size_t*) ;

int nvmem_cell_read_u16(struct device *dev, const char *cell_id, u16 *val)
{
 struct nvmem_cell *cell;
 void *buf;
 size_t len;

 cell = nvmem_cell_get(dev, cell_id);
 if (IS_ERR(cell))
  return PTR_ERR(cell);

 buf = nvmem_cell_read(cell, &len);
 if (IS_ERR(buf)) {
  nvmem_cell_put(cell);
  return PTR_ERR(buf);
 }
 if (len != sizeof(*val)) {
  kfree(buf);
  nvmem_cell_put(cell);
  return -EINVAL;
 }
 memcpy(val, buf, sizeof(*val));
 kfree(buf);
 nvmem_cell_put(cell);

 return 0;
}
