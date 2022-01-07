
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int bus_clk ;
 unsigned int gef_wdt_count ;
 unsigned int gef_wdt_timeout ;

__attribute__((used)) static void gef_wdt_set_timeout(unsigned int timeout)
{

 if (timeout > 0xFFFFFFFF / bus_clk)
  timeout = 0xFFFFFFFF / bus_clk;


 gef_wdt_count = (timeout * bus_clk) >> 8;
 gef_wdt_timeout = timeout;
}
