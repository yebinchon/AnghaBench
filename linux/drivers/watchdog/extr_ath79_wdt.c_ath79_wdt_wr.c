
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int iowrite32 (int ,unsigned int) ;
 unsigned int wdt_base ;

__attribute__((used)) static inline void ath79_wdt_wr(unsigned reg, u32 val)
{
 iowrite32(val, wdt_base + reg);
}
