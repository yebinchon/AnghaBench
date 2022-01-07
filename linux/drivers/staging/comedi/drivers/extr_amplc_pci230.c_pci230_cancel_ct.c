
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_device {int pacer; } ;


 int I8254_MODE1 ;
 int comedi_8254_set_mode (int ,unsigned int,int ) ;

__attribute__((used)) static void pci230_cancel_ct(struct comedi_device *dev, unsigned int ct)
{

 comedi_8254_set_mode(dev->pacer, ct, I8254_MODE1);
}
