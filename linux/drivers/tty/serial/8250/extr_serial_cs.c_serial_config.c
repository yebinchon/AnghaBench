
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct serial_info {int multi; scalar_t__ ndev; TYPE_2__* quirk; int prodid; int manfid; } ;
struct pcmcia_device {scalar_t__ func_id; int dev; TYPE_1__* socket; int card_id; int manf_id; scalar_t__ has_func_id; struct serial_info* priv; } ;
struct TYPE_6__ {int multi; scalar_t__ (* post ) (struct pcmcia_device*) ;int prodid; int manfid; } ;
struct TYPE_5__ {int functions; scalar_t__ pcmcia_pfc; } ;


 int ARRAY_SIZE (TYPE_2__*) ;
 scalar_t__ CISTPL_FUNCID_MULTI ;
 scalar_t__ CISTPL_FUNCID_SERIAL ;
 int ENODEV ;
 int dev_dbg (int *,char*) ;
 int dev_info (int *,char*,int ,int ,scalar_t__,int,TYPE_2__*) ;
 int dev_warn (int *,char*) ;
 int multi_config (struct pcmcia_device*) ;
 scalar_t__ pcmcia_loop_config (struct pcmcia_device*,int ,struct serial_info*) ;
 int pfc_config (struct pcmcia_device*) ;
 TYPE_2__* quirks ;
 int serial_check_for_multi ;
 int serial_remove (struct pcmcia_device*) ;
 int simple_config (struct pcmcia_device*) ;
 scalar_t__ stub1 (struct pcmcia_device*) ;

__attribute__((used)) static int serial_config(struct pcmcia_device *link)
{
 struct serial_info *info = link->priv;
 int i;

 dev_dbg(&link->dev, "serial_config\n");


 info->multi = (link->socket->functions > 1);


 info->manfid = link->manf_id;
 info->prodid = link->card_id;

 for (i = 0; i < ARRAY_SIZE(quirks); i++)
  if ((quirks[i].manfid == ~0 ||
       quirks[i].manfid == info->manfid) &&
      (quirks[i].prodid == ~0 ||
       quirks[i].prodid == info->prodid)) {
   info->quirk = &quirks[i];
   break;
  }





 if ((info->multi == 0) &&
     (link->has_func_id) &&
     (link->socket->pcmcia_pfc == 0) &&
     ((link->func_id == CISTPL_FUNCID_MULTI) ||
      (link->func_id == CISTPL_FUNCID_SERIAL))) {
  if (pcmcia_loop_config(link, serial_check_for_multi, info))
   goto failed;
 }




 if (info->quirk && info->quirk->multi != -1)
  info->multi = info->quirk->multi;

 dev_info(&link->dev,
  "trying to set up [0x%04x:0x%04x] (pfc: %d, multi: %d, quirk: %p)\n",
  link->manf_id, link->card_id,
  link->socket->pcmcia_pfc, info->multi, info->quirk);
 if (link->socket->pcmcia_pfc)
  i = pfc_config(link);
 else if (info->multi > 1)
  i = multi_config(link);
 else
  i = simple_config(link);

 if (i || info->ndev == 0)
  goto failed;





 if (info->quirk && info->quirk->post)
  if (info->quirk->post(link))
   goto failed;

 return 0;

failed:
 dev_warn(&link->dev, "failed to initialize\n");
 serial_remove(link);
 return -ENODEV;
}
