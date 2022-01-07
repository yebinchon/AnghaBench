
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_device {struct cb_pcidas_private* private; } ;
struct cb_pcidas_private {int ao_pacer; scalar_t__ amcc; } ;


 scalar_t__ AMCC_OP_REG_INTCSR ;
 int INTCSR_INBOX_INTR_STATUS ;
 int comedi_pci_detach (struct comedi_device*) ;
 int kfree (int ) ;
 int outl (int ,scalar_t__) ;

__attribute__((used)) static void cb_pcidas_detach(struct comedi_device *dev)
{
 struct cb_pcidas_private *devpriv = dev->private;

 if (devpriv) {
  if (devpriv->amcc)
   outl(INTCSR_INBOX_INTR_STATUS,
        devpriv->amcc + AMCC_OP_REG_INTCSR);
  kfree(devpriv->ao_pacer);
 }
 comedi_pci_detach(dev);
}
