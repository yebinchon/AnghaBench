
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CMD_LED_ON ;
 int DEVICE_ID_PANEL_BACK ;
 int INTERFACE_ERROR ;
 int dell_led_perform_fn (int,int ,int ,int ,int ,int ) ;

__attribute__((used)) static int led_on(void)
{
 return dell_led_perform_fn(3,
  INTERFACE_ERROR,
  DEVICE_ID_PANEL_BACK,
  CMD_LED_ON,
  0,
  0);
}
