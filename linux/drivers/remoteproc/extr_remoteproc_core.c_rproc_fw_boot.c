
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct rproc {char* firmware; int max_notifyid; int * table_ptr; int * cached_table; scalar_t__ nb_vdev; int bootaddr; struct device dev; } ;
struct firmware {int size; } ;


 int dev_err (struct device*,char*,int) ;
 int dev_info (struct device*,char*,char const*,int ) ;
 int kfree (int *) ;
 int rproc_alloc_registered_carveouts (struct rproc*) ;
 int rproc_disable_iommu (struct rproc*) ;
 int rproc_enable_iommu (struct rproc*) ;
 int rproc_fw_sanity_check (struct rproc*,struct firmware const*) ;
 int rproc_get_boot_addr (struct rproc*,struct firmware const*) ;
 int rproc_handle_resources (struct rproc*,int ) ;
 int rproc_loading_handlers ;
 int rproc_parse_fw (struct rproc*,struct firmware const*) ;
 int rproc_resource_cleanup (struct rproc*) ;
 int rproc_start (struct rproc*,struct firmware const*) ;

__attribute__((used)) static int rproc_fw_boot(struct rproc *rproc, const struct firmware *fw)
{
 struct device *dev = &rproc->dev;
 const char *name = rproc->firmware;
 int ret;

 ret = rproc_fw_sanity_check(rproc, fw);
 if (ret)
  return ret;

 dev_info(dev, "Booting fw image %s, size %zd\n", name, fw->size);





 ret = rproc_enable_iommu(rproc);
 if (ret) {
  dev_err(dev, "can't enable iommu: %d\n", ret);
  return ret;
 }

 rproc->bootaddr = rproc_get_boot_addr(rproc, fw);


 ret = rproc_parse_fw(rproc, fw);
 if (ret)
  goto disable_iommu;


 rproc->max_notifyid = -1;


 rproc->nb_vdev = 0;


 ret = rproc_handle_resources(rproc, rproc_loading_handlers);
 if (ret) {
  dev_err(dev, "Failed to process resources: %d\n", ret);
  goto clean_up_resources;
 }


 ret = rproc_alloc_registered_carveouts(rproc);
 if (ret) {
  dev_err(dev, "Failed to allocate associated carveouts: %d\n",
   ret);
  goto clean_up_resources;
 }

 ret = rproc_start(rproc, fw);
 if (ret)
  goto clean_up_resources;

 return 0;

clean_up_resources:
 rproc_resource_cleanup(rproc);
 kfree(rproc->cached_table);
 rproc->cached_table = ((void*)0);
 rproc->table_ptr = ((void*)0);
disable_iommu:
 rproc_disable_iommu(rproc);
 return ret;
}
