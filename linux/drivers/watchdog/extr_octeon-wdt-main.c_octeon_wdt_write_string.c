
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int prom_putchar (int ) ;

__attribute__((used)) static void octeon_wdt_write_string(const char *str)
{

 while (*str)
  prom_putchar(*str++);
}
