
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int val ;
typedef int u32 ;
struct tb_switch_nvm {int major; int minor; int id; struct nvmem_device* active; struct nvmem_device* non_active; } ;
struct tb_switch {int generation; struct tb_switch_nvm* nvm; int no_nvm_upgrade; int dma_port; int safe_mode; } ;
struct nvmem_device {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct nvmem_device*) ;
 int NVM_FLASH_SIZE ;
 int NVM_MAX_SIZE ;
 int NVM_VERSION ;
 int PTR_ERR (struct nvmem_device*) ;
 int SZ_16K ;
 int SZ_1M ;
 int SZ_8K ;
 int dma_port_flash_read (int ,int ,int*,int) ;
 int ida_simple_get (int *,int ,int ,int ) ;
 int ida_simple_remove (int *,int ) ;
 int kfree (struct tb_switch_nvm*) ;
 struct tb_switch_nvm* kzalloc (int,int ) ;
 int nvm_ida ;
 int nvmem_unregister (struct nvmem_device*) ;
 struct nvmem_device* register_nvmem (struct tb_switch*,int ,int,int) ;

__attribute__((used)) static int tb_switch_nvm_add(struct tb_switch *sw)
{
 struct nvmem_device *nvm_dev;
 struct tb_switch_nvm *nvm;
 u32 val;
 int ret;

 if (!sw->dma_port)
  return 0;

 nvm = kzalloc(sizeof(*nvm), GFP_KERNEL);
 if (!nvm)
  return -ENOMEM;

 nvm->id = ida_simple_get(&nvm_ida, 0, 0, GFP_KERNEL);






 if (!sw->safe_mode) {
  u32 nvm_size, hdr_size;

  ret = dma_port_flash_read(sw->dma_port, NVM_FLASH_SIZE, &val,
       sizeof(val));
  if (ret)
   goto err_ida;

  hdr_size = sw->generation < 3 ? SZ_8K : SZ_16K;
  nvm_size = (SZ_1M << (val & 7)) / 8;
  nvm_size = (nvm_size - hdr_size) / 2;

  ret = dma_port_flash_read(sw->dma_port, NVM_VERSION, &val,
       sizeof(val));
  if (ret)
   goto err_ida;

  nvm->major = val >> 16;
  nvm->minor = val >> 8;

  nvm_dev = register_nvmem(sw, nvm->id, nvm_size, 1);
  if (IS_ERR(nvm_dev)) {
   ret = PTR_ERR(nvm_dev);
   goto err_ida;
  }
  nvm->active = nvm_dev;
 }

 if (!sw->no_nvm_upgrade) {
  nvm_dev = register_nvmem(sw, nvm->id, NVM_MAX_SIZE, 0);
  if (IS_ERR(nvm_dev)) {
   ret = PTR_ERR(nvm_dev);
   goto err_nvm_active;
  }
  nvm->non_active = nvm_dev;
 }

 sw->nvm = nvm;
 return 0;

err_nvm_active:
 if (nvm->active)
  nvmem_unregister(nvm->active);
err_ida:
 ida_simple_remove(&nvm_ida, nvm->id);
 kfree(nvm);

 return ret;
}
