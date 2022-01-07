
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int W_SCALE ;
 int margin ;
 int pr_info (char*,int) ;
 int wdto_restart ;

__attribute__((used)) static void scx200_wdt_update_margin(void)
{
 pr_info("timer margin %d seconds\n", margin);
 wdto_restart = margin * W_SCALE;
}
