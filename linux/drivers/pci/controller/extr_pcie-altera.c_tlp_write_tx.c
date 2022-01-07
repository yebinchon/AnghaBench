
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tlp_rp_regpair_t {int ctrl; int reg1; int reg0; } ;
struct altera_pcie {int dummy; } ;


 int RP_TX_CNTRL ;
 int RP_TX_REG0 ;
 int RP_TX_REG1 ;
 int cra_writel (struct altera_pcie*,int ,int ) ;

__attribute__((used)) static void tlp_write_tx(struct altera_pcie *pcie,
    struct tlp_rp_regpair_t *tlp_rp_regdata)
{
 cra_writel(pcie, tlp_rp_regdata->reg0, RP_TX_REG0);
 cra_writel(pcie, tlp_rp_regdata->reg1, RP_TX_REG1);
 cra_writel(pcie, tlp_rp_regdata->ctrl, RP_TX_CNTRL);
}
