
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int delta_msr_wait; } ;
struct async_icount {int dummy; } ;
struct fwtty_port {TYPE_1__ port; struct async_icount icount; } ;


 int check_msr_delta (struct fwtty_port*,unsigned long,struct async_icount*) ;
 int wait_event_interruptible (int ,int ) ;

__attribute__((used)) static int wait_msr_change(struct fwtty_port *port, unsigned long mask)
{
 struct async_icount prev;

 prev = port->icount;

 return wait_event_interruptible(port->port.delta_msr_wait,
     check_msr_delta(port, mask, &prev));
}
