
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sas_work {int work; int drain_node; } ;
struct sas_ha_struct {int event_q; int defer_q; int state; } ;


 int SAS_HA_DRAINING ;
 int SAS_HA_REGISTERED ;
 int list_add_tail (int *,int *) ;
 scalar_t__ list_empty (int *) ;
 int queue_work (int ,int *) ;
 scalar_t__ test_bit (int ,int *) ;

int sas_queue_work(struct sas_ha_struct *ha, struct sas_work *sw)
{

 int rc = 1;

 if (!test_bit(SAS_HA_REGISTERED, &ha->state))
  return 0;

 if (test_bit(SAS_HA_DRAINING, &ha->state)) {

  if (list_empty(&sw->drain_node))
   list_add_tail(&sw->drain_node, &ha->defer_q);
 } else
  rc = queue_work(ha->event_q, &sw->work);

 return rc;
}
