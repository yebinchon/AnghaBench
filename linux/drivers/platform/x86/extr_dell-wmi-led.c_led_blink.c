
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CMD_LED_BLINK ;
 int DEVICE_ID_PANEL_BACK ;
 int INTERFACE_ERROR ;
 int dell_led_perform_fn (int,int ,int ,int ,unsigned char,unsigned char) ;

__attribute__((used)) static int led_blink(unsigned char on_eighths, unsigned char off_eighths)
{
 return dell_led_perform_fn(5,
  INTERFACE_ERROR,
  DEVICE_ID_PANEL_BACK,
  CMD_LED_BLINK,
  on_eighths,
  off_eighths);
}
