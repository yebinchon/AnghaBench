
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct parport {int irq; } ;


 int ECONTROL (struct parport*) ;
 int ECR_SPP ;
 int ECR_TST ;
 int ECR_WRITE (struct parport*,int) ;
 int FIFO (struct parport*) ;
 int PARPORT_IRQ_NONE ;
 int inb (int ) ;
 int outb (int,int ) ;
 int probe_irq_off (unsigned long) ;
 unsigned long probe_irq_on () ;

__attribute__((used)) static int irq_probe_ECP(struct parport *pb)
{
 int i;
 unsigned long irqs;

 irqs = probe_irq_on();

 ECR_WRITE(pb, ECR_SPP << 5);
 ECR_WRITE(pb, (ECR_TST << 5) | 0x04);
 ECR_WRITE(pb, ECR_TST << 5);


 for (i = 0; i < 1024 && !(inb(ECONTROL(pb)) & 0x02) ; i++)
  outb(0xaa, FIFO(pb));

 pb->irq = probe_irq_off(irqs);
 ECR_WRITE(pb, ECR_SPP << 5);

 if (pb->irq <= 0)
  pb->irq = PARPORT_IRQ_NONE;

 return pb->irq;
}
