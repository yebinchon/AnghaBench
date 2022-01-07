
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct parport {int dummy; } ;


 int PARPORT_IRQ_NONE ;

__attribute__((used)) static int irq_probe_SPP(struct parport *pb)
{

 return PARPORT_IRQ_NONE;
}
