
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uwb_beca_e {int rssi_stats; int lqe_stats; int refcnt; int mutex; } ;


 int kref_init (int *) ;
 int mutex_init (int *) ;
 int stats_init (int *) ;

__attribute__((used)) static void uwb_beca_e_init(struct uwb_beca_e *bce)
{
 mutex_init(&bce->mutex);
 kref_init(&bce->refcnt);
 stats_init(&bce->lqe_stats);
 stats_init(&bce->rssi_stats);
}
