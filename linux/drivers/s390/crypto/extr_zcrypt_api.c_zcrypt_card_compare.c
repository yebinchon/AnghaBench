
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct zcrypt_card {TYPE_1__* card; int load; } ;
struct TYPE_2__ {int total_request_count; } ;


 scalar_t__ atomic_read (int *) ;

__attribute__((used)) static inline bool zcrypt_card_compare(struct zcrypt_card *zc,
           struct zcrypt_card *pref_zc,
           unsigned int weight,
           unsigned int pref_weight)
{
 if (!pref_zc)
  return 0;
 weight += atomic_read(&zc->load);
 pref_weight += atomic_read(&pref_zc->load);
 if (weight == pref_weight)
  return atomic_read(&zc->card->total_request_count) >
   atomic_read(&pref_zc->card->total_request_count);
 return weight > pref_weight;
}
