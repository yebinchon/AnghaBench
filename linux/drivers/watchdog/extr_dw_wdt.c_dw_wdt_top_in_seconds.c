
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dw_wdt {unsigned int rate; } ;



__attribute__((used)) static inline int dw_wdt_top_in_seconds(struct dw_wdt *dw_wdt, unsigned top)
{




 return (1U << (16 + top)) / dw_wdt->rate;
}
