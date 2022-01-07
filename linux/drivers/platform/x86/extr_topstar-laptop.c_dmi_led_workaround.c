
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dmi_system_id {int dummy; } ;


 int led_workaround ;

__attribute__((used)) static int dmi_led_workaround(const struct dmi_system_id *id)
{
 led_workaround = 1;
 return 0;
}
