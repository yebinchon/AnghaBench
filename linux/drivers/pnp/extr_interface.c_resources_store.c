
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pnp_dev {int status; scalar_t__ active; TYPE_1__* protocol; int dev; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
typedef int resource_size_t ;
struct TYPE_2__ {int (* get ) (struct pnp_dev*) ;} ;


 int EBUSY ;
 int IORESOURCE_BUS ;
 int IORESOURCE_DMA ;
 int IORESOURCE_IO ;
 int IORESOURCE_IRQ ;
 int IORESOURCE_MEM ;
 int PNP_ATTACHED ;
 int dev_info (int *,char*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pnp_activate_dev (struct pnp_dev*) ;
 int pnp_add_bus_resource (struct pnp_dev*,int ,int ) ;
 int pnp_add_dma_resource (struct pnp_dev*,int ,unsigned long) ;
 int pnp_add_io_resource (struct pnp_dev*,int ,int ,unsigned long) ;
 int pnp_add_irq_resource (struct pnp_dev*,int ,unsigned long) ;
 int pnp_add_mem_resource (struct pnp_dev*,int ,int ,unsigned long) ;
 int pnp_auto_config_dev (struct pnp_dev*) ;
 scalar_t__ pnp_can_read (struct pnp_dev*) ;
 int pnp_disable_dev (struct pnp_dev*) ;
 char* pnp_get_resource_value (char*,int ,int *,int *,unsigned long*) ;
 int pnp_init_resources (struct pnp_dev*) ;
 int pnp_res_mutex ;
 char* skip_spaces (char*) ;
 int strncasecmp (char*,char*,int) ;
 int stub1 (struct pnp_dev*) ;
 struct pnp_dev* to_pnp_dev (struct device*) ;

__attribute__((used)) static ssize_t resources_store(struct device *dmdev,
          struct device_attribute *attr, const char *ubuf,
          size_t count)
{
 struct pnp_dev *dev = to_pnp_dev(dmdev);
 char *buf = (void *)ubuf;
 int retval = 0;

 if (dev->status & PNP_ATTACHED) {
  retval = -EBUSY;
  dev_info(&dev->dev, "in use; can't configure\n");
  goto done;
 }

 buf = skip_spaces(buf);
 if (!strncasecmp(buf, "disable", 7)) {
  retval = pnp_disable_dev(dev);
  goto done;
 }
 if (!strncasecmp(buf, "activate", 8)) {
  retval = pnp_activate_dev(dev);
  goto done;
 }
 if (!strncasecmp(buf, "fill", 4)) {
  if (dev->active)
   goto done;
  retval = pnp_auto_config_dev(dev);
  goto done;
 }
 if (!strncasecmp(buf, "auto", 4)) {
  if (dev->active)
   goto done;
  pnp_init_resources(dev);
  retval = pnp_auto_config_dev(dev);
  goto done;
 }
 if (!strncasecmp(buf, "clear", 5)) {
  if (dev->active)
   goto done;
  pnp_init_resources(dev);
  goto done;
 }
 if (!strncasecmp(buf, "get", 3)) {
  mutex_lock(&pnp_res_mutex);
  if (pnp_can_read(dev))
   dev->protocol->get(dev);
  mutex_unlock(&pnp_res_mutex);
  goto done;
 }
 if (!strncasecmp(buf, "set", 3)) {
  resource_size_t start;
  resource_size_t end;
  unsigned long flags;

  if (dev->active)
   goto done;
  buf += 3;
  pnp_init_resources(dev);
  mutex_lock(&pnp_res_mutex);
  while (1) {
   buf = skip_spaces(buf);
   if (!strncasecmp(buf, "io", 2)) {
    buf = pnp_get_resource_value(buf + 2,
            IORESOURCE_IO,
            &start, &end,
            &flags);
    pnp_add_io_resource(dev, start, end, flags);
   } else if (!strncasecmp(buf, "mem", 3)) {
    buf = pnp_get_resource_value(buf + 3,
            IORESOURCE_MEM,
            &start, &end,
            &flags);
    pnp_add_mem_resource(dev, start, end, flags);
   } else if (!strncasecmp(buf, "irq", 3)) {
    buf = pnp_get_resource_value(buf + 3,
            IORESOURCE_IRQ,
            &start, ((void*)0),
            &flags);
    pnp_add_irq_resource(dev, start, flags);
   } else if (!strncasecmp(buf, "dma", 3)) {
    buf = pnp_get_resource_value(buf + 3,
            IORESOURCE_DMA,
            &start, ((void*)0),
            &flags);
    pnp_add_dma_resource(dev, start, flags);
   } else if (!strncasecmp(buf, "bus", 3)) {
    buf = pnp_get_resource_value(buf + 3,
            IORESOURCE_BUS,
            &start, &end,
            ((void*)0));
    pnp_add_bus_resource(dev, start, end);
   } else
    break;
  }
  mutex_unlock(&pnp_res_mutex);
  goto done;
 }

done:
 if (retval < 0)
  return retval;
 return count;
}
