
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int clk_disable_unprepare (void*) ;

__attribute__((used)) static void imx7ulp_wdt_action(void *data)
{
 clk_disable_unprepare(data);
}
