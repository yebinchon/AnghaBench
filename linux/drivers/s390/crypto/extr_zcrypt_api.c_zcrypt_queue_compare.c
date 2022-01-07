
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct zcrypt_queue {TYPE_1__* queue; int load; } ;
struct TYPE_2__ {scalar_t__ total_request_count; } ;


 scalar_t__ atomic_read (int *) ;

__attribute__((used)) static inline bool zcrypt_queue_compare(struct zcrypt_queue *zq,
     struct zcrypt_queue *pref_zq,
     unsigned int weight,
     unsigned int pref_weight)
{
 if (!pref_zq)
  return 0;
 weight += atomic_read(&zq->load);
 pref_weight += atomic_read(&pref_zq->load);
 if (weight == pref_weight)
  return zq->queue->total_request_count >
   pref_zq->queue->total_request_count;
 return weight > pref_weight;
}
