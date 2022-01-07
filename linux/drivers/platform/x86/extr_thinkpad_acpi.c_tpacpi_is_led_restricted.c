
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int const TPACPI_SAFE_LEDS ;

__attribute__((used)) static inline bool tpacpi_is_led_restricted(const unsigned int led)
{



 return (1U & (TPACPI_SAFE_LEDS >> led)) == 0;

}
