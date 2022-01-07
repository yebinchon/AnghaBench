
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_device {int dummy; } ;


 int c6xdigio_pnp_driver ;
 int comedi_legacy_detach (struct comedi_device*) ;
 int pnp_unregister_driver (int *) ;

__attribute__((used)) static void c6xdigio_detach(struct comedi_device *dev)
{
 comedi_legacy_detach(dev);
 pnp_unregister_driver(&c6xdigio_pnp_driver);
}
