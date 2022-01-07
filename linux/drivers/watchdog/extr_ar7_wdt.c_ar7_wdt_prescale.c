
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int prescale; int prescale_lock; } ;


 int READ_REG (int ) ;
 int WRITE_REG (int ,int) ;
 TYPE_1__* ar7_wdt ;
 int pr_err (char*) ;

__attribute__((used)) static void ar7_wdt_prescale(u32 value)
{
 WRITE_REG(ar7_wdt->prescale_lock, 0x5a5a);
 if ((READ_REG(ar7_wdt->prescale_lock) & 3) == 1) {
  WRITE_REG(ar7_wdt->prescale_lock, 0xa5a5);
  if ((READ_REG(ar7_wdt->prescale_lock) & 3) == 3) {
   WRITE_REG(ar7_wdt->prescale, value);
   return;
  }
 }
 pr_err("failed to unlock WDT prescale reg\n");
}
