
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_supported_band {int band; void* n_bitrates; int * bitrates; } ;


 void* ARRAY_SIZE (void*) ;


 void* qtnf_rates_2g ;
 void* qtnf_rates_5g ;

void qtnf_band_init_rates(struct ieee80211_supported_band *band)
{
 switch (band->band) {
 case 129:
  band->bitrates = qtnf_rates_2g;
  band->n_bitrates = ARRAY_SIZE(qtnf_rates_2g);
  break;
 case 128:
  band->bitrates = qtnf_rates_5g;
  band->n_bitrates = ARRAY_SIZE(qtnf_rates_5g);
  break;
 default:
  band->bitrates = ((void*)0);
  band->n_bitrates = 0;
  break;
 }
}
