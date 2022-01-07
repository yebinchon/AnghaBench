
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_device {int dummy; } ;


 int pci230_release_shared (struct comedi_device*,unsigned char,unsigned int) ;

__attribute__((used)) static void pci230_release_all_resources(struct comedi_device *dev,
      unsigned int owner)
{
 pci230_release_shared(dev, (unsigned char)~0, owner);
}
