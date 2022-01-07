
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct watchdog_device {int dummy; } ;


 int EXT_MATCH0 ;
 int M_RES1 ;
 int M_RES2 ;
 int NOTIFY_DONE ;
 unsigned long REBOOT_HARD ;
 unsigned long REBOOT_SOFT ;
 int RESFRC1 ;
 int RESFRC2 ;
 int WDTIM_EMR (int ) ;
 int WDTIM_MCTRL (int ) ;
 int WDTIM_PULSE (int ) ;
 int mdelay (int) ;
 int wdt_base ;
 int writel (int,int ) ;

__attribute__((used)) static int pnx4008_restart_handler(struct watchdog_device *wdd,
       unsigned long mode, void *cmd)
{
 const char *boot_cmd = cmd;







 if (boot_cmd) {
  if (boot_cmd[0] == 'h')
   mode = REBOOT_HARD;
  else if (boot_cmd[0] == 's')
   mode = REBOOT_SOFT;
 }

 if (mode == REBOOT_SOFT) {

  writel(EXT_MATCH0, WDTIM_EMR(wdt_base));

  writel(M_RES1, WDTIM_MCTRL(wdt_base));
 } else {

  writel(13000, WDTIM_PULSE(wdt_base));
  writel(M_RES2 | RESFRC1 | RESFRC2, WDTIM_MCTRL(wdt_base));
 }


 mdelay(1000);

 return NOTIFY_DONE;
}
