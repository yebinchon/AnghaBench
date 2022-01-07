
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct parport {int muxport; struct parport** slaves; struct parport* physport; int portnum; int ops; int dma; int irq; int base; } ;


 struct parport* parport_register_port (int ,int ,int ,int ) ;

__attribute__((used)) static struct parport *clone_parport(struct parport *real, int muxport)
{
 struct parport *extra = parport_register_port(real->base,
             real->irq,
             real->dma,
             real->ops);
 if (extra) {
  extra->portnum = real->portnum;
  extra->physport = real;
  extra->muxport = muxport;
  real->slaves[muxport-1] = extra;
 }

 return extra;
}
