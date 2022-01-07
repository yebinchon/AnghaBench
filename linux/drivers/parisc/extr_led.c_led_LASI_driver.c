
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LED_DATA_REG ;
 int gsc_writeb (unsigned char,int ) ;

__attribute__((used)) static void led_LASI_driver(unsigned char leds)
{
 leds = ~leds;
 gsc_writeb( leds, LED_DATA_REG );
}
