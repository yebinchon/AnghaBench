
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GP_CLIENTSEL (int) ;
 int PINS_PER_COLLECTION ;

__attribute__((used)) static void dc_client_sel(int pin_num, int *reg, int *bit)
{
 *bit = (pin_num % PINS_PER_COLLECTION) * 2;
 *reg = GP_CLIENTSEL(pin_num/PINS_PER_COLLECTION);

 if (*bit >= PINS_PER_COLLECTION) {
  *bit -= PINS_PER_COLLECTION;
  *reg += 1;
 }
}
