
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct miphy28lp_phy {scalar_t__ base; } ;


 scalar_t__ MIPHY_COMP_POSTP ;
 int writeb_relaxed (int,scalar_t__) ;

__attribute__((used)) static inline void miphy_tune_tx_impedance(struct miphy28lp_phy *miphy_phy)
{

 writeb_relaxed(0x02, miphy_phy->base + MIPHY_COMP_POSTP);
}
