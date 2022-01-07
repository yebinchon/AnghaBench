
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pcmcia_driver {int owner; int name; int (* remove ) (struct pcmcia_device*) ;} ;
struct pcmcia_device {scalar_t__ device_no; int _win; scalar_t__ _locked; scalar_t__ _io; scalar_t__ _irq; TYPE_1__* socket; } ;
struct device {int driver; } ;
struct TYPE_2__ {scalar_t__ device_count; scalar_t__ pcmcia_pfc; } ;


 int CLIENT_WIN_REQ (int) ;
 int MAX_WIN ;
 int dev_dbg (struct device*,char*) ;
 int dev_info (struct device*,char*,int ) ;
 int module_put (int ) ;
 int pcmcia_card_remove (TYPE_1__*,struct pcmcia_device*) ;
 int pcmcia_put_dev (struct pcmcia_device*) ;
 int stub1 (struct pcmcia_device*) ;
 struct pcmcia_device* to_pcmcia_dev (struct device*) ;
 struct pcmcia_driver* to_pcmcia_drv (int ) ;

__attribute__((used)) static int pcmcia_device_remove(struct device *dev)
{
 struct pcmcia_device *p_dev;
 struct pcmcia_driver *p_drv;
 int i;

 p_dev = to_pcmcia_dev(dev);
 p_drv = to_pcmcia_drv(dev->driver);

 dev_dbg(dev, "removing device\n");





 if ((p_dev->socket->pcmcia_pfc) &&
     (p_dev->socket->device_count > 0) &&
     (p_dev->device_no == 0))
  pcmcia_card_remove(p_dev->socket, p_dev);


 if (!p_drv)
  return 0;

 if (p_drv->remove)
  p_drv->remove(p_dev);


 if (p_dev->_irq || p_dev->_io || p_dev->_locked)
  dev_info(dev,
    "pcmcia: driver %s did not release config properly\n",
    p_drv->name);

 for (i = 0; i < MAX_WIN; i++)
  if (p_dev->_win & CLIENT_WIN_REQ(i))
   dev_info(dev,
     "pcmcia: driver %s did not release window properly\n",
     p_drv->name);


 pcmcia_put_dev(p_dev);
 module_put(p_drv->owner);

 return 0;
}
