
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pnp_dev {int dummy; } ;
struct comedi_device {scalar_t__ hw_dev; } ;


 int comedi_legacy_detach (struct comedi_device*) ;
 int mio_common_detach (struct comedi_device*) ;
 int pnp_device_detach (struct pnp_dev*) ;
 struct pnp_dev* to_pnp_dev (scalar_t__) ;

__attribute__((used)) static void ni_atmio_detach(struct comedi_device *dev)
{
 struct pnp_dev *isapnp_dev;

 mio_common_detach(dev);
 comedi_legacy_detach(dev);

 isapnp_dev = dev->hw_dev ? to_pnp_dev(dev->hw_dev) : ((void*)0);
 if (isapnp_dev)
  pnp_device_detach(isapnp_dev);
}
