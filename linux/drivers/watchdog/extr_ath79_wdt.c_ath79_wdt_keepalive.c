
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int WDOG_REG_TIMER ;
 int ath79_wdt_rr (int ) ;
 int ath79_wdt_wr (int ,int) ;
 int timeout ;
 int wdt_freq ;

__attribute__((used)) static inline void ath79_wdt_keepalive(void)
{
 ath79_wdt_wr(WDOG_REG_TIMER, wdt_freq * timeout);

 ath79_wdt_rr(WDOG_REG_TIMER);
}
