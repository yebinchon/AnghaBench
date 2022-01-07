
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct serial_info {scalar_t__ manfid; TYPE_1__* quirk; scalar_t__ multi; } ;
struct pcmcia_device {int config_index; int irq; TYPE_2__** resource; int dev; int config_flags; struct serial_info* priv; } ;
struct TYPE_4__ {int start; } ;
struct TYPE_3__ {int (* config ) (struct pcmcia_device*) ;} ;


 int CONF_AUTO_SET_VPP ;
 int ENODEV ;
 scalar_t__ MANFID_3COM ;
 int dev_warn (int *,char*) ;
 int pcmcia_enable_device (struct pcmcia_device*) ;
 int pcmcia_loop_config (struct pcmcia_device*,int ,int*) ;
 int setup_serial (struct pcmcia_device*,struct serial_info*,int ,int ) ;
 int simple_config_check ;
 int simple_config_check_notpicky ;
 int stub1 (struct pcmcia_device*) ;

__attribute__((used)) static int simple_config(struct pcmcia_device *link)
{
 struct serial_info *info = link->priv;
 int i = -ENODEV, try;





 link->config_flags |= CONF_AUTO_SET_VPP;
 for (try = 0; try < 4; try++)
  if (!pcmcia_loop_config(link, simple_config_check, &try))
   goto found_port;






 if (!pcmcia_loop_config(link, simple_config_check_notpicky, ((void*)0)))
  goto found_port;

 dev_warn(&link->dev, "no usable port range found, giving up\n");
 return -1;

found_port:
 if (info->multi && (info->manfid == MANFID_3COM))
  link->config_index &= ~(0x08);




 if (info->quirk && info->quirk->config)
  info->quirk->config(link);

 i = pcmcia_enable_device(link);
 if (i != 0)
  return -1;
 return setup_serial(link, info, link->resource[0]->start, link->irq);
}
