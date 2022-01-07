
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int iowrite32 (int ,unsigned int) ;
 unsigned int mt7621_wdt_base ;

__attribute__((used)) static inline void rt_wdt_w32(unsigned reg, u32 val)
{
 iowrite32(val, mt7621_wdt_base + reg);
}
