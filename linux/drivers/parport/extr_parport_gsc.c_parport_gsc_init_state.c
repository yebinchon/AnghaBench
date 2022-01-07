
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ctr; } ;
struct TYPE_4__ {TYPE_1__ pc; } ;
struct parport_state {TYPE_2__ u; } ;
struct pardevice {scalar_t__ irq_func; } ;



void parport_gsc_init_state(struct pardevice *dev, struct parport_state *s)
{
 s->u.pc.ctr = 0xc | (dev->irq_func ? 0x10 : 0x0);
}
