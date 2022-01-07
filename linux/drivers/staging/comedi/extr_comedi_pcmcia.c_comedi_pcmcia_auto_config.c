
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcmcia_device {int dev; } ;
struct comedi_driver {int dummy; } ;


 int comedi_auto_config (int *,struct comedi_driver*,int ) ;

int comedi_pcmcia_auto_config(struct pcmcia_device *link,
         struct comedi_driver *driver)
{
 return comedi_auto_config(&link->dev, driver, 0);
}
