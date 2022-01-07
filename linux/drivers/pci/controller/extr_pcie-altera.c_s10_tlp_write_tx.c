
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct altera_pcie {int dummy; } ;


 int RP_TX_REG0 ;
 int S10_RP_TX_CNTRL ;
 int cra_writel (struct altera_pcie*,int ,int ) ;

__attribute__((used)) static void s10_tlp_write_tx(struct altera_pcie *pcie, u32 reg0, u32 ctrl)
{
 cra_writel(pcie, reg0, RP_TX_REG0);
 cra_writel(pcie, ctrl, S10_RP_TX_CNTRL);
}
