
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct parport {int dummy; } ;


 int IRQ_MFP_BUSY ;
 int enable_irq (int ) ;

__attribute__((used)) static void
parport_atari_enable_irq(struct parport *p)
{
 enable_irq(IRQ_MFP_BUSY);
}
