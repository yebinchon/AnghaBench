
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct max63xx_timeout {int twd; scalar_t__ tdelay; } ;


 scalar_t__ nodelay ;

__attribute__((used)) static struct max63xx_timeout *
max63xx_select_timeout(struct max63xx_timeout *table, int value)
{
 while (table->twd) {
  if (value <= table->twd) {
   if (nodelay && table->tdelay == 0)
    return table;

   if (!nodelay)
    return table;
  }

  table++;
 }

 return ((void*)0);
}
