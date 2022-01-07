
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pmc_reg_map {int dummy; } ;
struct pmc_dev {int init; int regmap; struct pmc_reg_map const* map; int base_addr; } ;
struct pmc_data {struct pmc_reg_map* map; } ;
struct pci_device_id {scalar_t__ driver_data; } ;
struct pci_dev {int dev; } ;


 int ACPI_BASE_ADDR_MASK ;
 int ACPI_BASE_ADDR_OFFSET ;
 int ENOMEM ;
 int PMC_BASE_ADDR_MASK ;
 int PMC_BASE_ADDR_OFFSET ;
 int PMC_MMIO_REG_LEN ;
 int acpi_base_addr ;
 int dev_err (int *,char*) ;
 int dev_warn (int *,char*,int) ;
 int ioremap_nocache (int ,int ) ;
 int pci_read_config_dword (struct pci_dev*,int ,int *) ;
 int * pm_power_off ;
 int pmc_dbgfs_register (struct pmc_dev*) ;
 struct pmc_dev pmc_device ;
 int pmc_hw_reg_setup (struct pmc_dev*) ;
 int * pmc_power_off ;
 int pmc_setup_clks (struct pci_dev*,int ,struct pmc_data const*) ;

__attribute__((used)) static int pmc_setup_dev(struct pci_dev *pdev, const struct pci_device_id *ent)
{
 struct pmc_dev *pmc = &pmc_device;
 const struct pmc_data *data = (struct pmc_data *)ent->driver_data;
 const struct pmc_reg_map *map = data->map;
 int ret;


 pci_read_config_dword(pdev, ACPI_BASE_ADDR_OFFSET, &acpi_base_addr);
 acpi_base_addr &= ACPI_BASE_ADDR_MASK;


 if (acpi_base_addr != 0 && pm_power_off == ((void*)0))
  pm_power_off = pmc_power_off;

 pci_read_config_dword(pdev, PMC_BASE_ADDR_OFFSET, &pmc->base_addr);
 pmc->base_addr &= PMC_BASE_ADDR_MASK;

 pmc->regmap = ioremap_nocache(pmc->base_addr, PMC_MMIO_REG_LEN);
 if (!pmc->regmap) {
  dev_err(&pdev->dev, "error: ioremap failed\n");
  return -ENOMEM;
 }

 pmc->map = map;


 pmc_hw_reg_setup(pmc);

 pmc_dbgfs_register(pmc);


 ret = pmc_setup_clks(pdev, pmc->regmap, data);
 if (ret)
  dev_warn(&pdev->dev, "platform clocks register failed: %d\n",
    ret);

 pmc->init = 1;
 return ret;
}
