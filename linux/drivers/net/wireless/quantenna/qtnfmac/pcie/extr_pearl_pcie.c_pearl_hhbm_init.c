
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int rx_bd_num; } ;
struct qtnf_pcie_pearl_state {int pcie_reg_base; TYPE_1__ base; } ;


 int HHBM_64BIT ;
 int HHBM_CONFIG_SOFT_RESET ;
 int PCIE_HHBM_CONFIG (int ) ;
 int PCIE_HHBM_Q_LIMIT_REG (int ) ;
 int readl (int ) ;
 int usleep_range (int,int) ;
 int writel (int ,int ) ;

__attribute__((used)) static int pearl_hhbm_init(struct qtnf_pcie_pearl_state *ps)
{
 u32 val;

 val = readl(PCIE_HHBM_CONFIG(ps->pcie_reg_base));
 val |= HHBM_CONFIG_SOFT_RESET;
 writel(val, PCIE_HHBM_CONFIG(ps->pcie_reg_base));
 usleep_range(50, 100);
 val &= ~HHBM_CONFIG_SOFT_RESET;



 writel(val, PCIE_HHBM_CONFIG(ps->pcie_reg_base));
 writel(ps->base.rx_bd_num, PCIE_HHBM_Q_LIMIT_REG(ps->pcie_reg_base));

 return 0;
}
