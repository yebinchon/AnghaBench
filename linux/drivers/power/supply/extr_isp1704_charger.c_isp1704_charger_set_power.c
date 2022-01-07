
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct isp1704_charger {int enable_gpio; } ;


 int gpiod_set_value (int ,int) ;

__attribute__((used)) static void isp1704_charger_set_power(struct isp1704_charger *isp, bool on)
{
 gpiod_set_value(isp->enable_gpio, on);
}
