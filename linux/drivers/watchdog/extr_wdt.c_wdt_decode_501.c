
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int WDC_SR_PSUOVER ;
 int WDC_SR_PSUUNDR ;
 int WDC_SR_TGOOD ;
 int WDT_RT ;
 int inb_p (int ) ;
 int pr_crit (char*,...) ;

__attribute__((used)) static void wdt_decode_501(int status)
{
 if (!(status & WDC_SR_TGOOD))
  pr_crit("Overheat alarm (%d)\n", inb_p(WDT_RT));
 if (!(status & WDC_SR_PSUOVER))
  pr_crit("PSU over voltage\n");
 if (!(status & WDC_SR_PSUUNDR))
  pr_crit("PSU under voltage\n");
}
