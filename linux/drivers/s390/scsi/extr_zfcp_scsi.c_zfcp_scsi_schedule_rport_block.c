
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct zfcp_port {int dev; int rport_work; TYPE_1__* adapter; scalar_t__ rport; int rport_task; } ;
struct TYPE_2__ {int work_queue; } ;


 int RPORT_DEL ;
 int get_device (int *) ;
 int put_device (int *) ;
 scalar_t__ queue_work (int ,int *) ;

void zfcp_scsi_schedule_rport_block(struct zfcp_port *port)
{
 get_device(&port->dev);
 port->rport_task = RPORT_DEL;

 if (port->rport && queue_work(port->adapter->work_queue,
          &port->rport_work))
  return;

 put_device(&port->dev);
}
