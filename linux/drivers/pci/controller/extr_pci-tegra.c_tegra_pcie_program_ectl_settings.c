
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_5__ {int rp_ectl_2_r1; int rp_ectl_4_r1; int rp_ectl_5_r1; int rp_ectl_6_r1; int rp_ectl_2_r2; int rp_ectl_4_r2; int rp_ectl_5_r2; int rp_ectl_6_r2; } ;
struct TYPE_6__ {TYPE_2__ regs; } ;
struct tegra_pcie_soc {TYPE_3__ ectl; } ;
struct tegra_pcie_port {scalar_t__ base; TYPE_1__* pcie; } ;
struct TYPE_4__ {struct tegra_pcie_soc* soc; } ;


 scalar_t__ RP_ECTL_2_R1 ;
 int RP_ECTL_2_R1_RX_CTLE_1C_MASK ;
 scalar_t__ RP_ECTL_2_R2 ;
 int RP_ECTL_2_R2_RX_CTLE_1C_MASK ;
 scalar_t__ RP_ECTL_4_R1 ;
 int RP_ECTL_4_R1_RX_CDR_CTRL_1C_MASK ;
 int RP_ECTL_4_R1_RX_CDR_CTRL_1C_SHIFT ;
 scalar_t__ RP_ECTL_4_R2 ;
 int RP_ECTL_4_R2_RX_CDR_CTRL_1C_MASK ;
 int RP_ECTL_4_R2_RX_CDR_CTRL_1C_SHIFT ;
 scalar_t__ RP_ECTL_5_R1 ;
 int RP_ECTL_5_R1_RX_EQ_CTRL_L_1C_MASK ;
 scalar_t__ RP_ECTL_5_R2 ;
 int RP_ECTL_5_R2_RX_EQ_CTRL_L_1C_MASK ;
 scalar_t__ RP_ECTL_6_R1 ;
 int RP_ECTL_6_R1_RX_EQ_CTRL_H_1C_MASK ;
 scalar_t__ RP_ECTL_6_R2 ;
 int RP_ECTL_6_R2_RX_EQ_CTRL_H_1C_MASK ;
 int readl (scalar_t__) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void tegra_pcie_program_ectl_settings(struct tegra_pcie_port *port)
{
 const struct tegra_pcie_soc *soc = port->pcie->soc;
 u32 value;

 value = readl(port->base + RP_ECTL_2_R1);
 value &= ~RP_ECTL_2_R1_RX_CTLE_1C_MASK;
 value |= soc->ectl.regs.rp_ectl_2_r1;
 writel(value, port->base + RP_ECTL_2_R1);

 value = readl(port->base + RP_ECTL_4_R1);
 value &= ~RP_ECTL_4_R1_RX_CDR_CTRL_1C_MASK;
 value |= soc->ectl.regs.rp_ectl_4_r1 <<
    RP_ECTL_4_R1_RX_CDR_CTRL_1C_SHIFT;
 writel(value, port->base + RP_ECTL_4_R1);

 value = readl(port->base + RP_ECTL_5_R1);
 value &= ~RP_ECTL_5_R1_RX_EQ_CTRL_L_1C_MASK;
 value |= soc->ectl.regs.rp_ectl_5_r1;
 writel(value, port->base + RP_ECTL_5_R1);

 value = readl(port->base + RP_ECTL_6_R1);
 value &= ~RP_ECTL_6_R1_RX_EQ_CTRL_H_1C_MASK;
 value |= soc->ectl.regs.rp_ectl_6_r1;
 writel(value, port->base + RP_ECTL_6_R1);

 value = readl(port->base + RP_ECTL_2_R2);
 value &= ~RP_ECTL_2_R2_RX_CTLE_1C_MASK;
 value |= soc->ectl.regs.rp_ectl_2_r2;
 writel(value, port->base + RP_ECTL_2_R2);

 value = readl(port->base + RP_ECTL_4_R2);
 value &= ~RP_ECTL_4_R2_RX_CDR_CTRL_1C_MASK;
 value |= soc->ectl.regs.rp_ectl_4_r2 <<
    RP_ECTL_4_R2_RX_CDR_CTRL_1C_SHIFT;
 writel(value, port->base + RP_ECTL_4_R2);

 value = readl(port->base + RP_ECTL_5_R2);
 value &= ~RP_ECTL_5_R2_RX_EQ_CTRL_L_1C_MASK;
 value |= soc->ectl.regs.rp_ectl_5_r2;
 writel(value, port->base + RP_ECTL_5_R2);

 value = readl(port->base + RP_ECTL_6_R2);
 value &= ~RP_ECTL_6_R2_RX_EQ_CTRL_H_1C_MASK;
 value |= soc->ectl.regs.rp_ectl_6_r2;
 writel(value, port->base + RP_ECTL_6_R2);
}
