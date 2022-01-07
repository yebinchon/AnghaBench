
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcmcia_device {int dev; } ;


 int comedi_auto_unconfig (int *) ;

void comedi_pcmcia_auto_unconfig(struct pcmcia_device *link)
{
 comedi_auto_unconfig(&link->dev);
}
