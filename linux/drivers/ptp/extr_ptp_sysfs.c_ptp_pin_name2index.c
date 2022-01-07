
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ptp_clock {TYPE_2__* info; } ;
struct TYPE_4__ {int n_pins; TYPE_1__* pin_config; } ;
struct TYPE_3__ {int name; } ;


 int strcmp (int ,char const*) ;

__attribute__((used)) static int ptp_pin_name2index(struct ptp_clock *ptp, const char *name)
{
 int i;
 for (i = 0; i < ptp->info->n_pins; i++) {
  if (!strcmp(ptp->info->pin_config[i].name, name))
   return i;
 }
 return -1;
}
