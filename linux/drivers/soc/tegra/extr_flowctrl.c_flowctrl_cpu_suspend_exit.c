
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int FLOW_CTRL_CSR_ENABLE ;
 unsigned int FLOW_CTRL_CSR_EVENT_FLAG ;
 unsigned int FLOW_CTRL_CSR_INTR_FLAG ;



 unsigned int TEGRA20_FLOW_CTRL_CSR_WFE_BITMAP ;
 unsigned int TEGRA20_FLOW_CTRL_CSR_WFI_BITMAP ;

 unsigned int TEGRA30_FLOW_CTRL_CSR_WFE_BITMAP ;
 unsigned int TEGRA30_FLOW_CTRL_CSR_WFI_BITMAP ;
 unsigned int flowctrl_read_cpu_csr (unsigned int) ;
 int flowctrl_write_cpu_csr (unsigned int,unsigned int) ;
 int tegra_get_chip_id () ;

void flowctrl_cpu_suspend_exit(unsigned int cpuid)
{
 unsigned int reg;


 reg = flowctrl_read_cpu_csr(cpuid);
 switch (tegra_get_chip_id()) {
 case 129:

  reg &= ~TEGRA20_FLOW_CTRL_CSR_WFE_BITMAP;

  reg &= ~TEGRA20_FLOW_CTRL_CSR_WFI_BITMAP;
  break;
 case 128:
 case 131:
 case 130:

  reg &= ~TEGRA30_FLOW_CTRL_CSR_WFE_BITMAP;

  reg &= ~TEGRA30_FLOW_CTRL_CSR_WFI_BITMAP;
  break;
 }
 reg &= ~FLOW_CTRL_CSR_ENABLE;
 reg |= FLOW_CTRL_CSR_INTR_FLAG;
 reg |= FLOW_CTRL_CSR_EVENT_FLAG;
 flowctrl_write_cpu_csr(cpuid, reg);
}
