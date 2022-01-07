
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_7__ {TYPE_1__* hw; int fcport_waitQ; } ;
typedef TYPE_2__ scsi_qla_host_t ;
struct TYPE_6__ {int wq; } ;


 int HZ ;
 int flush_workqueue (int ) ;
 int qla2x00_mark_all_devices_lost (TYPE_2__*,int ) ;
 int test_fcport_count (TYPE_2__*) ;
 scalar_t__ wait_event_timeout (int ,int ,int ) ;

void
qla2x00_wait_for_sess_deletion(scsi_qla_host_t *vha)
{
 u8 i;

 qla2x00_mark_all_devices_lost(vha, 0);

 for (i = 0; i < 10; i++) {
  if (wait_event_timeout(vha->fcport_waitQ,
      test_fcport_count(vha), HZ) > 0)
   break;
 }

 flush_workqueue(vha->hw->wq);
}
