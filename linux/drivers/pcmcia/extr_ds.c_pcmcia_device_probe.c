
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct pcmcia_socket {int device_count; int ops_mutex; scalar_t__ pcmcia_pfc; } ;
struct pcmcia_driver {int name; int (* probe ) (struct pcmcia_device*) ;int owner; } ;
struct pcmcia_device {int vpp; int config_index; int irq; int* resource; scalar_t__ device_no; struct pcmcia_socket* socket; scalar_t__ config_regs; scalar_t__ config_base; int func; int function_config; } ;
struct device {int driver; } ;
struct TYPE_3__ {scalar_t__* rmask; scalar_t__ base; } ;
typedef TYPE_1__ cistpl_config_t ;


 int CISTPL_CONFIG ;
 int EINVAL ;
 int ENODEV ;
 int PCMCIA_UEVENT_REQUERY ;
 int dev_dbg (struct device*,char*,int,...) ;
 int dev_info (struct device*,char*) ;
 struct device* get_device (struct device*) ;
 int module_put (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pccard_read_tuple (struct pcmcia_socket*,int ,int ,TYPE_1__*) ;
 int pcmcia_parse_uevents (struct pcmcia_socket*,int ) ;
 int put_device (struct device*) ;
 int stub1 (struct pcmcia_device*) ;
 struct pcmcia_device* to_pcmcia_dev (struct device*) ;
 struct pcmcia_driver* to_pcmcia_drv (int ) ;
 int try_module_get (int ) ;

__attribute__((used)) static int pcmcia_device_probe(struct device *dev)
{
 struct pcmcia_device *p_dev;
 struct pcmcia_driver *p_drv;
 struct pcmcia_socket *s;
 cistpl_config_t cis_config;
 int ret = 0;

 dev = get_device(dev);
 if (!dev)
  return -ENODEV;

 p_dev = to_pcmcia_dev(dev);
 p_drv = to_pcmcia_drv(dev->driver);
 s = p_dev->socket;

 dev_dbg(dev, "trying to bind to %s\n", p_drv->name);

 if ((!p_drv->probe) || (!p_dev->function_config) ||
     (!try_module_get(p_drv->owner))) {
  ret = -EINVAL;
  goto put_dev;
 }


 ret = pccard_read_tuple(p_dev->socket, p_dev->func, CISTPL_CONFIG,
    &cis_config);
 if (!ret) {
  p_dev->config_base = cis_config.base;
  p_dev->config_regs = cis_config.rmask[0];
  dev_dbg(dev, "base %x, regs %x", p_dev->config_base,
   p_dev->config_regs);
 } else {
  dev_info(dev,
    "pcmcia: could not parse base and rmask0 of CIS\n");
  p_dev->config_base = 0;
  p_dev->config_regs = 0;
 }

 ret = p_drv->probe(p_dev);
 if (ret) {
  dev_dbg(dev, "binding to %s failed with %d\n",
      p_drv->name, ret);
  goto put_module;
 }
 dev_dbg(dev, "%s bound: Vpp %d.%d, idx %x, IRQ %d", p_drv->name,
  p_dev->vpp/10, p_dev->vpp%10, p_dev->config_index, p_dev->irq);
 dev_dbg(dev, "resources: ioport %pR %pR iomem %pR %pR %pR",
  p_dev->resource[0], p_dev->resource[1], p_dev->resource[2],
  p_dev->resource[3], p_dev->resource[4]);

 mutex_lock(&s->ops_mutex);
 if ((s->pcmcia_pfc) &&
     (p_dev->socket->device_count == 1) && (p_dev->device_no == 0))
  pcmcia_parse_uevents(s, PCMCIA_UEVENT_REQUERY);
 mutex_unlock(&s->ops_mutex);

put_module:
 if (ret)
  module_put(p_drv->owner);
put_dev:
 if (ret)
  put_device(dev);
 return ret;
}
