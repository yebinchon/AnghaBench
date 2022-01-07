
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;


 int cfgSTATUS ;
 int readw (int*) ;
 scalar_t__ remapped_base ;
 int udelay (int) ;
 int writew (int,int*) ;

__attribute__((used)) static void w100_soft_reset(void)
{
 u16 val = readw((u16 *) remapped_base + cfgSTATUS);
 writew(val | 0x08, (u16 *) remapped_base + cfgSTATUS);
 udelay(100);
 writew(0x00, (u16 *) remapped_base + cfgSTATUS);
 udelay(100);
}
