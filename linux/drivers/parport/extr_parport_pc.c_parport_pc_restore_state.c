
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {unsigned char ctr; int ecr; } ;
struct TYPE_5__ {TYPE_3__ pc; } ;
struct parport_state {TYPE_2__ u; } ;
struct parport_pc_private {unsigned char ctr_writable; unsigned char ctr; scalar_t__ ecr; } ;
struct parport {TYPE_1__* physport; } ;
struct TYPE_4__ {struct parport_pc_private* private_data; } ;


 int CONTROL (struct parport*) ;
 int ECR_WRITE (struct parport*,int ) ;
 int outb (unsigned char,int ) ;

__attribute__((used)) static void parport_pc_restore_state(struct parport *p,
      struct parport_state *s)
{
 struct parport_pc_private *priv = p->physport->private_data;
 register unsigned char c = s->u.pc.ctr & priv->ctr_writable;
 outb(c, CONTROL(p));
 priv->ctr = c;
 if (priv->ecr)
  ECR_WRITE(p, s->u.pc.ecr);
}
