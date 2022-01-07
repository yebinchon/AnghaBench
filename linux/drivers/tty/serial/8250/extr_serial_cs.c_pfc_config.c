
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct serial_info {int slave; scalar_t__ manfid; } ;
struct pcmcia_device {int dev; int irq; TYPE_1__** resource; struct serial_info* priv; } ;
struct TYPE_2__ {scalar_t__ end; unsigned int start; } ;


 int ENODEV ;
 scalar_t__ MANFID_OSITECH ;
 int dev_warn (int *,char*) ;
 int resource_size (TYPE_1__*) ;
 int setup_serial (struct pcmcia_device*,struct serial_info*,unsigned int,int ) ;

__attribute__((used)) static int pfc_config(struct pcmcia_device *p_dev)
{
 unsigned int port = 0;
 struct serial_info *info = p_dev->priv;

 if ((p_dev->resource[1]->end != 0) &&
  (resource_size(p_dev->resource[1]) == 8)) {
  port = p_dev->resource[1]->start;
  info->slave = 1;
 } else if ((info->manfid == MANFID_OSITECH) &&
  (resource_size(p_dev->resource[0]) == 0x40)) {
  port = p_dev->resource[0]->start + 0x28;
  info->slave = 1;
 }
 if (info->slave)
  return setup_serial(p_dev, info, port, p_dev->irq);

 dev_warn(&p_dev->dev, "no usable port range found, giving up\n");
 return -ENODEV;
}
