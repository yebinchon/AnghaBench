
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcmcia_driver {int dummy; } ;
struct comedi_driver {int dummy; } ;


 int comedi_driver_unregister (struct comedi_driver*) ;
 int pcmcia_unregister_driver (struct pcmcia_driver*) ;

void comedi_pcmcia_driver_unregister(struct comedi_driver *comedi_driver,
         struct pcmcia_driver *pcmcia_driver)
{
 pcmcia_unregister_driver(pcmcia_driver);
 comedi_driver_unregister(comedi_driver);
}
