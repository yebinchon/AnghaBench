
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int ecr; int ctr; } ;
struct TYPE_6__ {TYPE_2__ pc; } ;
struct parport_state {TYPE_3__ u; } ;
struct parport_pc_private {scalar_t__ ecr; int ctr; } ;
struct parport {TYPE_1__* physport; } ;
struct TYPE_4__ {struct parport_pc_private* private_data; } ;


 int ECONTROL (struct parport*) ;
 int inb (int ) ;

__attribute__((used)) static void parport_pc_save_state(struct parport *p, struct parport_state *s)
{
 const struct parport_pc_private *priv = p->physport->private_data;
 s->u.pc.ctr = priv->ctr;
 if (priv->ecr)
  s->u.pc.ecr = inb(ECONTROL(p));
}
