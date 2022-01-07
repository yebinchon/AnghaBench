
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bnx2fc_interface {int timer_work_queue; } ;
struct bnx2fc_cmd {int refcount; int timeout_work; TYPE_1__* port; } ;
struct TYPE_2__ {struct bnx2fc_interface* priv; } ;


 int kref_get (int *) ;
 int msecs_to_jiffies (unsigned int) ;
 scalar_t__ queue_delayed_work (int ,int *,int ) ;

void bnx2fc_cmd_timer_set(struct bnx2fc_cmd *io_req,
     unsigned int timer_msec)
{
 struct bnx2fc_interface *interface = io_req->port->priv;

 if (queue_delayed_work(interface->timer_work_queue,
          &io_req->timeout_work,
          msecs_to_jiffies(timer_msec)))
  kref_get(&io_req->refcount);
}
