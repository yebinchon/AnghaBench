
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci230_private {unsigned char* res_owned; int res_spinlock; } ;
struct comedi_device {struct pci230_private* private; } ;


 unsigned int NUM_OWNERS ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static bool pci230_claim_shared(struct comedi_device *dev,
    unsigned char res_mask, unsigned int owner)
{
 struct pci230_private *devpriv = dev->private;
 unsigned int o;
 unsigned long irqflags;

 spin_lock_irqsave(&devpriv->res_spinlock, irqflags);
 for (o = 0; o < NUM_OWNERS; o++) {
  if (o == owner)
   continue;
  if (devpriv->res_owned[o] & res_mask) {
   spin_unlock_irqrestore(&devpriv->res_spinlock,
            irqflags);
   return 0;
  }
 }
 devpriv->res_owned[owner] |= res_mask;
 spin_unlock_irqrestore(&devpriv->res_spinlock, irqflags);
 return 1;
}
