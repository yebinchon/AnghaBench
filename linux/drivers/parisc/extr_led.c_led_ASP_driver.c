
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LED_DATA_REG ;
 unsigned char LED_STROBE ;
 int gsc_writeb (unsigned char,int ) ;

__attribute__((used)) static void led_ASP_driver(unsigned char leds)
{
 int i;

 leds = ~leds;
 for (i = 0; i < 8; i++) {
  unsigned char value;
  value = (leds & 0x80) >> 7;
  gsc_writeb( value, LED_DATA_REG );
  gsc_writeb( value | LED_STROBE, LED_DATA_REG );
  leds <<= 1;
 }
}
