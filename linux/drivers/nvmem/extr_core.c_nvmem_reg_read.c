
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvmem_device {int (* reg_read ) (int ,unsigned int,void*,size_t) ;int priv; } ;


 int EINVAL ;
 int stub1 (int ,unsigned int,void*,size_t) ;

__attribute__((used)) static int nvmem_reg_read(struct nvmem_device *nvmem, unsigned int offset,
     void *val, size_t bytes)
{
 if (nvmem->reg_read)
  return nvmem->reg_read(nvmem->priv, offset, val, bytes);

 return -EINVAL;
}
