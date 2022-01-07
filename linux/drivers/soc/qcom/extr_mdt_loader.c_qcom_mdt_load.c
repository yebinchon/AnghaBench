
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct firmware {int dummy; } ;
struct device {int dummy; } ;
typedef int phys_addr_t ;


 int __qcom_mdt_load (struct device*,struct firmware const*,char const*,int,void*,int ,size_t,int *,int) ;

int qcom_mdt_load(struct device *dev, const struct firmware *fw,
    const char *firmware, int pas_id, void *mem_region,
    phys_addr_t mem_phys, size_t mem_size,
    phys_addr_t *reloc_base)
{
 return __qcom_mdt_load(dev, fw, firmware, pas_id, mem_region, mem_phys,
          mem_size, reloc_base, 1);
}
