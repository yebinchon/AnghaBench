
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct zfcp_port {int dev; int rport_work; TYPE_1__* adapter; int rport_task; } ;
struct TYPE_2__ {int work_queue; } ;


 int RPORT_ADD ;
 int get_device (int *) ;
 int put_device (int *) ;
 int queue_work (int ,int *) ;

void zfcp_scsi_schedule_rport_register(struct zfcp_port *port)
{
 get_device(&port->dev);
 port->rport_task = RPORT_ADD;

 if (!queue_work(port->adapter->work_queue, &port->rport_work))
  put_device(&port->dev);
}
