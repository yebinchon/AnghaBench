
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int kick; int kick_lock; } ;


 int READ_REG (int ) ;
 int WRITE_REG (int ,int) ;
 TYPE_1__* ar7_wdt ;
 int pr_err (char*) ;

__attribute__((used)) static void ar7_wdt_kick(u32 value)
{
 WRITE_REG(ar7_wdt->kick_lock, 0x5555);
 if ((READ_REG(ar7_wdt->kick_lock) & 3) == 1) {
  WRITE_REG(ar7_wdt->kick_lock, 0xaaaa);
  if ((READ_REG(ar7_wdt->kick_lock) & 3) == 3) {
   WRITE_REG(ar7_wdt->kick, value);
   return;
  }
 }
 pr_err("failed to unlock WDT kick reg\n");
}
