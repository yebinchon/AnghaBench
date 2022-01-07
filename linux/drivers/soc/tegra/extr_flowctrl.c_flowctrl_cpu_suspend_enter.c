
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int FLOW_CTRL_CSR_ENABLE ;
 unsigned int FLOW_CTRL_CSR_EVENT_FLAG ;
 unsigned int FLOW_CTRL_CSR_INTR_FLAG ;



 unsigned int TEGRA20_FLOW_CTRL_CSR_WFE_BITMAP ;
 unsigned int TEGRA20_FLOW_CTRL_CSR_WFE_CPU0 ;
 unsigned int TEGRA20_FLOW_CTRL_CSR_WFI_BITMAP ;

 unsigned int TEGRA30_FLOW_CTRL_CSR_WFE_BITMAP ;
 unsigned int TEGRA30_FLOW_CTRL_CSR_WFI_BITMAP ;
 unsigned int TEGRA30_FLOW_CTRL_CSR_WFI_CPU0 ;
 unsigned int flowctrl_read_cpu_csr (int) ;
 int flowctrl_write_cpu_csr (int,unsigned int) ;
 int num_possible_cpus () ;
 int tegra_get_chip_id () ;

void flowctrl_cpu_suspend_enter(unsigned int cpuid)
{
 unsigned int reg;
 int i;

 reg = flowctrl_read_cpu_csr(cpuid);
 switch (tegra_get_chip_id()) {
 case 129:

  reg &= ~TEGRA20_FLOW_CTRL_CSR_WFE_BITMAP;

  reg &= ~TEGRA20_FLOW_CTRL_CSR_WFI_BITMAP;

  reg |= TEGRA20_FLOW_CTRL_CSR_WFE_CPU0 << cpuid;
  break;
 case 128:
 case 131:
 case 130:

  reg &= ~TEGRA30_FLOW_CTRL_CSR_WFE_BITMAP;

  reg &= ~TEGRA30_FLOW_CTRL_CSR_WFI_BITMAP;

  reg |= TEGRA30_FLOW_CTRL_CSR_WFI_CPU0 << cpuid;
  break;
 }
 reg |= FLOW_CTRL_CSR_INTR_FLAG;
 reg |= FLOW_CTRL_CSR_EVENT_FLAG;
 reg |= FLOW_CTRL_CSR_ENABLE;
 flowctrl_write_cpu_csr(cpuid, reg);

 for (i = 0; i < num_possible_cpus(); i++) {
  if (i == cpuid)
   continue;
  reg = flowctrl_read_cpu_csr(i);
  reg |= FLOW_CTRL_CSR_EVENT_FLAG;
  reg |= FLOW_CTRL_CSR_INTR_FLAG;
  flowctrl_write_cpu_csr(i, reg);
 }
}
