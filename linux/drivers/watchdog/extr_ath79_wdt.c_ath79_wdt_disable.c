
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int WDOG_CTRL_ACTION_NONE ;
 int WDOG_REG_CTRL ;
 int ath79_wdt_rr (int ) ;
 int ath79_wdt_wr (int ,int ) ;

__attribute__((used)) static inline void ath79_wdt_disable(void)
{
 ath79_wdt_wr(WDOG_REG_CTRL, WDOG_CTRL_ACTION_NONE);

 ath79_wdt_rr(WDOG_REG_CTRL);
}
