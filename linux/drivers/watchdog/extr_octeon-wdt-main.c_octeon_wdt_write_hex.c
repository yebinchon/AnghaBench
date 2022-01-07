
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int prom_putchar (int) ;

__attribute__((used)) static void octeon_wdt_write_hex(u64 value, int digits)
{
 int d;
 int v;

 for (d = 0; d < digits; d++) {
  v = (value >> ((digits - d - 1) * 4)) & 0xf;
  if (v >= 10)
   prom_putchar('a' + v - 10);
  else
   prom_putchar('0' + v);
 }
}
