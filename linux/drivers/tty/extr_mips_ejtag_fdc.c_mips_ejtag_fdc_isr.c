
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mips_ejtag_fdc_tty {scalar_t__ cpu; } ;
typedef int irqreturn_t ;


 int CAUSEF_FDCI ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int mips_ejtag_fdc_handle (struct mips_ejtag_fdc_tty*) ;
 int read_c0_cause () ;
 scalar_t__ smp_processor_id () ;

__attribute__((used)) static irqreturn_t mips_ejtag_fdc_isr(int irq, void *dev_id)
{
 struct mips_ejtag_fdc_tty *priv = dev_id;
 if (smp_processor_id() != priv->cpu)
  return IRQ_NONE;


 if (!(read_c0_cause() & CAUSEF_FDCI))
  return IRQ_NONE;

 mips_ejtag_fdc_handle(priv);
 return IRQ_HANDLED;
}
