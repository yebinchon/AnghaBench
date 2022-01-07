
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ptp_pin_desc {int func; unsigned int chan; } ;
struct ptp_clock {int pincfg_mux; TYPE_1__* info; } ;
typedef enum ptp_pin_function { ____Placeholder_ptp_pin_function } ptp_pin_function ;
struct TYPE_2__ {int n_pins; struct ptp_pin_desc* pin_config; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

int ptp_find_pin(struct ptp_clock *ptp,
   enum ptp_pin_function func, unsigned int chan)
{
 struct ptp_pin_desc *pin = ((void*)0);
 int i;

 mutex_lock(&ptp->pincfg_mux);
 for (i = 0; i < ptp->info->n_pins; i++) {
  if (ptp->info->pin_config[i].func == func &&
      ptp->info->pin_config[i].chan == chan) {
   pin = &ptp->info->pin_config[i];
   break;
  }
 }
 mutex_unlock(&ptp->pincfg_mux);

 return pin ? i : -1;
}
