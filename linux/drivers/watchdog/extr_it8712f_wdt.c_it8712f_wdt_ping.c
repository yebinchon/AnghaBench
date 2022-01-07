
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int WDT_RESET_GAME ;
 int address ;
 int inb (int ) ;
 int wdt_control_reg ;

__attribute__((used)) static inline void it8712f_wdt_ping(void)
{
 if (wdt_control_reg & WDT_RESET_GAME)
  inb(address);
}
