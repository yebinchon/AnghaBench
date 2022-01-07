
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int AT91_ST_EXTEN ;
 int AT91_ST_WDMR ;
 int regmap_st ;
 int regmap_write (int ,int ,int ) ;

__attribute__((used)) static inline void at91_wdt_stop(void)
{
 regmap_write(regmap_st, AT91_ST_WDMR, AT91_ST_EXTEN);
}
