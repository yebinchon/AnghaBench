
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcmcia_device {int dummy; } ;


 int comedi_pcmcia_auto_config (struct pcmcia_device*,int *) ;
 int daq700_driver ;

__attribute__((used)) static int daq700_cs_attach(struct pcmcia_device *link)
{
 return comedi_pcmcia_auto_config(link, &daq700_driver);
}
