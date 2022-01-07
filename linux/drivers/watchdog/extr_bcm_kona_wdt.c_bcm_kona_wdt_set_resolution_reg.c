
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bcm_kona_wdt {int resolution; } ;


 int EINVAL ;
 int SECWDOG_CLKS_SHIFT ;
 int SECWDOG_MAX_RES ;
 int SECWDOG_RES_MASK ;
 int bcm_kona_wdt_ctrl_reg_modify (struct bcm_kona_wdt*,int ,int) ;

__attribute__((used)) static int bcm_kona_wdt_set_resolution_reg(struct bcm_kona_wdt *wdt)
{
 if (wdt->resolution > SECWDOG_MAX_RES)
  return -EINVAL;

 return bcm_kona_wdt_ctrl_reg_modify(wdt, SECWDOG_RES_MASK,
     wdt->resolution << SECWDOG_CLKS_SHIFT);
}
