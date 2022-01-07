
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int list; } ;
struct wilc {int rxq_cs; TYPE_1__ rxq_head; scalar_t__ quit; } ;
struct rxq_entry_t {int list; } ;


 int list_add_tail (int *,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void wilc_wlan_rxq_add(struct wilc *wilc, struct rxq_entry_t *rqe)
{
 if (wilc->quit)
  return;

 mutex_lock(&wilc->rxq_cs);
 list_add_tail(&rqe->list, &wilc->rxq_head.list);
 mutex_unlock(&wilc->rxq_cs);
}
