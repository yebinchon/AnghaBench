
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpcap_charger_ddata {int * gpio; } ;


 int gpiod_set_value (int ,int) ;

__attribute__((used)) static void cpcap_charger_set_inductive_path(struct cpcap_charger_ddata *ddata,
          bool enabled)
{
 if (!ddata->gpio[1])
  return;

 gpiod_set_value(ddata->gpio[1], enabled);
}
