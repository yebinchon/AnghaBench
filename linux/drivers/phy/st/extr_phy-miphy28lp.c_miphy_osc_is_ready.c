
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct miphy28lp_phy {int * syscfg_reg; int osc_rdy; struct miphy28lp_dev* phydev; } ;
struct miphy28lp_dev {int regmap; } ;


 int EBUSY ;
 int EINVAL ;
 int HZ ;
 int MIPHY_OSC_RDY ;
 size_t SYSCFG_STATUS ;
 int cpu_relax () ;
 int jiffies ;
 int regmap_read (int ,int ,int*) ;
 int time_after_eq (int,unsigned long) ;

__attribute__((used)) static int miphy_osc_is_ready(struct miphy28lp_phy *miphy_phy)
{
 struct miphy28lp_dev *miphy_dev = miphy_phy->phydev;
 unsigned long finish = jiffies + 5 * HZ;
 u32 val;

 if (!miphy_phy->osc_rdy)
  return 0;

 if (!miphy_phy->syscfg_reg[SYSCFG_STATUS])
  return -EINVAL;

 do {
  regmap_read(miphy_dev->regmap,
    miphy_phy->syscfg_reg[SYSCFG_STATUS], &val);

  if ((val & MIPHY_OSC_RDY) != MIPHY_OSC_RDY)
   cpu_relax();
  else
   return 0;
 } while (!time_after_eq(jiffies, finish));

 return -EBUSY;
}
