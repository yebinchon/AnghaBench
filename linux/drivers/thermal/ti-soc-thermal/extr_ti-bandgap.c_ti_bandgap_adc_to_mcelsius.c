
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ti_bandgap_data {int adc_start_val; int adc_end_val; int* conv_table; } ;
struct ti_bandgap {struct ti_bandgap_data* conf; } ;


 int ERANGE ;

__attribute__((used)) static
int ti_bandgap_adc_to_mcelsius(struct ti_bandgap *bgp, int adc_val, int *t)
{
 const struct ti_bandgap_data *conf = bgp->conf;


 if (adc_val < conf->adc_start_val || adc_val > conf->adc_end_val)
  return -ERANGE;

 *t = bgp->conf->conv_table[adc_val - conf->adc_start_val];
 return 0;
}
