
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int ar7_wdt_change (int) ;
 int clk_get_rate (int ) ;
 int margin ;
 int pr_info (char*,int,int,int,int) ;
 int prescale_value ;
 int vbus_clk ;

__attribute__((used)) static void ar7_wdt_update_margin(int new_margin)
{
 u32 change;
 u32 vbus_rate;

 vbus_rate = clk_get_rate(vbus_clk);
 change = new_margin * (vbus_rate / prescale_value);
 if (change < 1)
  change = 1;
 if (change > 0xffff)
  change = 0xffff;
 ar7_wdt_change(change);
 margin = change * prescale_value / vbus_rate;
 pr_info("timer margin %d seconds (prescale %d, change %d, freq %d)\n",
  margin, prescale_value, change, vbus_rate);
}
