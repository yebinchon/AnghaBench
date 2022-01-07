
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum brcm_sata_phy_rxaeq_mode { ____Placeholder_brcm_sata_phy_rxaeq_mode } brcm_sata_phy_rxaeq_mode ;


 int RXAEQ_MODE_AUTO ;
 int RXAEQ_MODE_MANUAL ;
 int RXAEQ_MODE_OFF ;
 int strcmp (char const*,char*) ;

__attribute__((used)) static enum brcm_sata_phy_rxaeq_mode rxaeq_to_val(const char *m)
{
 if (!strcmp(m, "auto"))
  return RXAEQ_MODE_AUTO;
 else if (!strcmp(m, "manual"))
  return RXAEQ_MODE_MANUAL;
 else
  return RXAEQ_MODE_OFF;
}
