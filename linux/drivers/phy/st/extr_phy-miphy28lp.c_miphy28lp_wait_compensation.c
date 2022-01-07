
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct miphy28lp_phy {scalar_t__ base; } ;


 int COMP_DONE ;
 int EBUSY ;
 int HZ ;
 scalar_t__ MIPHY_COMP_FSM_6 ;
 int cpu_relax () ;
 int jiffies ;
 int readb_relaxed (scalar_t__) ;
 scalar_t__ time_after_eq (int,unsigned long) ;

__attribute__((used)) static inline int miphy28lp_wait_compensation(struct miphy28lp_phy *miphy_phy)
{
 unsigned long finish = jiffies + 5 * HZ;
 u8 val;


 do {
  val = readb_relaxed(miphy_phy->base + MIPHY_COMP_FSM_6);

  if (time_after_eq(jiffies, finish))
   return -EBUSY;
  cpu_relax();
 } while (!(val & COMP_DONE));

 return 0;
}
