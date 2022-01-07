
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct serial_info {int multi; scalar_t__ manfid; scalar_t__ prodid; int c950ctrl; TYPE_1__* quirk; } ;
struct pcmcia_device {int config_index; int irq; TYPE_2__** resource; int dev; struct serial_info* priv; } ;
struct TYPE_4__ {int start; } ;
struct TYPE_3__ {int (* wakeup ) (struct pcmcia_device*) ;int (* config ) (struct pcmcia_device*) ;} ;


 int ENODEV ;
 scalar_t__ MANFID_OXSEMI ;
 scalar_t__ MANFID_POSSIO ;
 scalar_t__ PRODID_POSSIO_GCC ;
 int dev_warn (int *,char*) ;
 int multi_config_check ;
 int multi_config_check_notpicky ;
 int pcmcia_enable_device (struct pcmcia_device*) ;
 scalar_t__ pcmcia_loop_config (struct pcmcia_device*,int ,int*) ;
 int setup_serial (struct pcmcia_device*,struct serial_info*,int,int ) ;
 int stub1 (struct pcmcia_device*) ;
 int stub2 (struct pcmcia_device*) ;

__attribute__((used)) static int multi_config(struct pcmcia_device *link)
{
 struct serial_info *info = link->priv;
 int i, base2 = 0;


 if (!pcmcia_loop_config(link, multi_config_check, &info->multi))
  base2 = link->resource[0]->start + 8;
 else {

  info->multi = 2;
  if (pcmcia_loop_config(link, multi_config_check_notpicky,
           &base2)) {
   dev_warn(&link->dev,
     "no usable port range found, giving up\n");
   return -ENODEV;
  }
 }

 if (!link->irq)
  dev_warn(&link->dev, "no usable IRQ found, continuing...\n");




 if (info->quirk && info->quirk->config)
  info->quirk->config(link);

 i = pcmcia_enable_device(link);
 if (i != 0)
  return -ENODEV;





 if (info->manfid == MANFID_OXSEMI || (info->manfid == MANFID_POSSIO &&
    info->prodid == PRODID_POSSIO_GCC)) {
  int err;

  if (link->config_index == 1 ||
      link->config_index == 3) {
   err = setup_serial(link, info, base2,
     link->irq);
   base2 = link->resource[0]->start;
  } else {
   err = setup_serial(link, info, link->resource[0]->start,
     link->irq);
  }
  info->c950ctrl = base2;





  if (info->quirk && info->quirk->wakeup)
   info->quirk->wakeup(link);

  return 0;
 }

 setup_serial(link, info, link->resource[0]->start, link->irq);
 for (i = 0; i < info->multi - 1; i++)
  setup_serial(link, info, base2 + (8 * i),
    link->irq);
 return 0;
}
