
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct x86_cpu_id {scalar_t__ driver_data; } ;
struct pmc_reg_map {int regmap_length; scalar_t__ slp_s0_offset; } ;
struct pmc_dev {int pmc_xram_read_bit; int lock; int regbase; struct pmc_reg_map* map; scalar_t__ base_addr; } ;
struct platform_device {int dev; } ;


 int ENODEV ;
 int ENOMEM ;
 int PHYS_PFN (scalar_t__) ;
 scalar_t__ PMC_BASE_ADDR_DEFAULT ;
 struct pmc_reg_map cnp_reg_map ;
 int dev_info (int *,char*) ;
 int dmi_check_system (int ) ;
 int intel_pmc_core_ids ;
 int ioremap (scalar_t__,int ) ;
 scalar_t__ lpit_read_residency_count_address (scalar_t__*) ;
 int mutex_init (int *) ;
 scalar_t__ page_is_ram (int ) ;
 int pci_dev_present (int ) ;
 int platform_set_drvdata (struct platform_device*,struct pmc_dev*) ;
 struct pmc_dev pmc ;
 int pmc_core_check_read_lock_bit () ;
 int pmc_core_dbgfs_register (struct pmc_dev*) ;
 int pmc_core_dmi_table ;
 int pmc_pci_ids ;
 struct pmc_reg_map spt_reg_map ;
 struct x86_cpu_id* x86_match_cpu (int ) ;

__attribute__((used)) static int pmc_core_probe(struct platform_device *pdev)
{
 static bool device_initialized;
 struct pmc_dev *pmcdev = &pmc;
 const struct x86_cpu_id *cpu_id;
 u64 slp_s0_addr;

 if (device_initialized)
  return -ENODEV;

 cpu_id = x86_match_cpu(intel_pmc_core_ids);
 if (!cpu_id)
  return -ENODEV;

 pmcdev->map = (struct pmc_reg_map *)cpu_id->driver_data;






 if (pmcdev->map == &spt_reg_map && !pci_dev_present(pmc_pci_ids))
  pmcdev->map = &cnp_reg_map;

 if (lpit_read_residency_count_address(&slp_s0_addr)) {
  pmcdev->base_addr = PMC_BASE_ADDR_DEFAULT;

  if (page_is_ram(PHYS_PFN(pmcdev->base_addr)))
   return -ENODEV;
 } else {
  pmcdev->base_addr = slp_s0_addr - pmcdev->map->slp_s0_offset;
 }

 pmcdev->regbase = ioremap(pmcdev->base_addr,
      pmcdev->map->regmap_length);
 if (!pmcdev->regbase)
  return -ENOMEM;

 mutex_init(&pmcdev->lock);
 platform_set_drvdata(pdev, pmcdev);
 pmcdev->pmc_xram_read_bit = pmc_core_check_read_lock_bit();
 dmi_check_system(pmc_core_dmi_table);

 pmc_core_dbgfs_register(pmcdev);

 device_initialized = 1;
 dev_info(&pdev->dev, " initialized\n");

 return 0;
}
