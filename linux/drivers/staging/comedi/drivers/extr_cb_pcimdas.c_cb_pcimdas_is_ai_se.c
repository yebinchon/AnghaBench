
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_device {struct cb_pcimdas_private* private; } ;
struct cb_pcimdas_private {scalar_t__ BADR3; } ;


 unsigned int PCIMDAS_STATUS_MUX ;
 scalar_t__ PCIMDAS_STATUS_REG ;
 unsigned int inb (scalar_t__) ;

__attribute__((used)) static bool cb_pcimdas_is_ai_se(struct comedi_device *dev)
{
 struct cb_pcimdas_private *devpriv = dev->private;
 unsigned int status;






 status = inb(devpriv->BADR3 + PCIMDAS_STATUS_REG);
 return status & PCIMDAS_STATUS_MUX;
}
