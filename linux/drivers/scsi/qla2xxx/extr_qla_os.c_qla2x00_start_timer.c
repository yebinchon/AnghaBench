
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ expires; } ;
struct TYPE_5__ {int timer_active; TYPE_2__ timer; } ;
typedef TYPE_1__ scsi_qla_host_t ;


 unsigned long HZ ;
 int add_timer (TYPE_2__*) ;
 scalar_t__ jiffies ;
 int qla2x00_timer ;
 int timer_setup (TYPE_2__*,int ,int ) ;

__inline__ void
qla2x00_start_timer(scsi_qla_host_t *vha, unsigned long interval)
{
 timer_setup(&vha->timer, qla2x00_timer, 0);
 vha->timer.expires = jiffies + interval * HZ;
 add_timer(&vha->timer);
 vha->timer_active = 1;
}
