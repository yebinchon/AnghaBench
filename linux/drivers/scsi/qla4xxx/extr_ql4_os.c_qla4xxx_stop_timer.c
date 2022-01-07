
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_qla_host {scalar_t__ timer_active; int timer; } ;


 int del_timer_sync (int *) ;

__attribute__((used)) static void qla4xxx_stop_timer(struct scsi_qla_host *ha)
{
 del_timer_sync(&ha->timer);
 ha->timer_active = 0;
}
