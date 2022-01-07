
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct at91_pmx_pin {int mux; int conf; int pin; scalar_t__ bank; } ;


 int dev_dbg (struct device const*,char*,scalar_t__,int ,int,...) ;

__attribute__((used)) static void at91_pin_dbg(const struct device *dev, const struct at91_pmx_pin *pin)
{
 if (pin->mux) {
  dev_dbg(dev, "pio%c%d configured as periph%c with conf = 0x%lx\n",
   pin->bank + 'A', pin->pin, pin->mux - 1 + 'A', pin->conf);
 } else {
  dev_dbg(dev, "pio%c%d configured as gpio with conf = 0x%lx\n",
   pin->bank + 'A', pin->pin, pin->conf);
 }
}
