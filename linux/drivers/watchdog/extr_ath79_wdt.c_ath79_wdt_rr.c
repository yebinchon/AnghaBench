
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int ioread32 (unsigned int) ;
 unsigned int wdt_base ;

__attribute__((used)) static inline u32 ath79_wdt_rr(unsigned reg)
{
 return ioread32(wdt_base + reg);
}
