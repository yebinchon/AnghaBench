
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_device {int dummy; } ;


 int comedi_pcmcia_disable (struct comedi_device*) ;
 int labpc_common_detach (struct comedi_device*) ;

__attribute__((used)) static void labpc_cs_detach(struct comedi_device *dev)
{
 labpc_common_detach(dev);
 comedi_pcmcia_disable(dev);
}
