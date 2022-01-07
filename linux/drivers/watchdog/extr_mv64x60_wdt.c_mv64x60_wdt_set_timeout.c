
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int bus_clk ;
 unsigned int mv64x60_wdt_count ;
 unsigned int mv64x60_wdt_timeout ;

__attribute__((used)) static void mv64x60_wdt_set_timeout(unsigned int timeout)
{

 if (timeout > 0xFFFFFFFF / bus_clk)
  timeout = 0xFFFFFFFF / bus_clk;

 mv64x60_wdt_count = timeout * bus_clk >> 8;
 mv64x60_wdt_timeout = timeout;
}
