
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct at91_pmx_pin {size_t bank; int pin; int mux; } ;
struct at91_pinctrl {int nmux; int* mux_mask; int dev; } ;


 int EINVAL ;
 int ENXIO ;
 int MAX_NB_GPIO_PER_BANK ;
 int dev_err (int ,char*,char const*,int,int,...) ;
 size_t gpio_banks ;
 int * gpio_chips ;

__attribute__((used)) static int pin_check_config(struct at91_pinctrl *info, const char *name,
       int index, const struct at91_pmx_pin *pin)
{
 int mux;


 if (pin->bank >= gpio_banks) {
  dev_err(info->dev, "%s: pin conf %d bank_id %d >= nbanks %d\n",
   name, index, pin->bank, gpio_banks);
  return -EINVAL;
 }

 if (!gpio_chips[pin->bank]) {
  dev_err(info->dev, "%s: pin conf %d bank_id %d not enabled\n",
   name, index, pin->bank);
  return -ENXIO;
 }

 if (pin->pin >= MAX_NB_GPIO_PER_BANK) {
  dev_err(info->dev, "%s: pin conf %d pin_bank_id %d >= %d\n",
   name, index, pin->pin, MAX_NB_GPIO_PER_BANK);
  return -EINVAL;
 }

 if (!pin->mux)
  return 0;

 mux = pin->mux - 1;

 if (mux >= info->nmux) {
  dev_err(info->dev, "%s: pin conf %d mux_id %d >= nmux %d\n",
   name, index, mux, info->nmux);
  return -EINVAL;
 }

 if (!(info->mux_mask[pin->bank * info->nmux + mux] & 1 << pin->pin)) {
  dev_err(info->dev, "%s: pin conf %d mux_id %d not supported for pio%c%d\n",
   name, index, mux, pin->bank + 'A', pin->pin);
  return -EINVAL;
 }

 return 0;
}
