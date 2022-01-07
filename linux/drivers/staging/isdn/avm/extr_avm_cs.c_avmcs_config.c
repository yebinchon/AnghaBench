
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pcmcia_device {unsigned int irq; TYPE_1__** resource; int dev; int * prod_id; } ;
typedef int devname ;
struct TYPE_2__ {unsigned int start; } ;





 int ENODEV ;
 int avmcs_configcheck ;
 int avmcs_release (struct pcmcia_device*) ;
 int b1pcmcia_addcard_b1 (unsigned int,unsigned int) ;
 int b1pcmcia_addcard_m1 (unsigned int,unsigned int) ;
 int b1pcmcia_addcard_m2 (unsigned int,unsigned int) ;
 int dev_err (int *,char*,unsigned int,unsigned int) ;
 int pcmcia_disable_device (struct pcmcia_device*) ;
 int pcmcia_enable_device (struct pcmcia_device*) ;
 scalar_t__ pcmcia_loop_config (struct pcmcia_device*,int ,int *) ;
 scalar_t__ strcmp (char*,char*) ;
 int strlcpy (char*,int ,int) ;
 char* strrchr (char*,char) ;
 int stub1 (unsigned int,unsigned int) ;

__attribute__((used)) static int avmcs_config(struct pcmcia_device *link)
{
 int i = -1;
 char devname[128];
 int cardtype;
 int (*addcard)(unsigned int port, unsigned irq);

 devname[0] = 0;
 if (link->prod_id[1])
  strlcpy(devname, link->prod_id[1], sizeof(devname));




 if (pcmcia_loop_config(link, avmcs_configcheck, ((void*)0)))
  return -ENODEV;

 do {
  if (!link->irq) {

   pcmcia_disable_device(link);
   break;
  }




  i = pcmcia_enable_device(link);
  if (i != 0) {
   pcmcia_disable_device(link);
   break;
  }

 } while (0);

 if (devname[0]) {
  char *s = strrchr(devname, ' ');
  if (!s)
   s = devname;
  else s++;
  if (strcmp("M1", s) == 0) {
   cardtype = 129;
  } else if (strcmp("M2", s) == 0) {
   cardtype = 128;
  } else {
   cardtype = 130;
  }
 } else
  cardtype = 130;


 if (i != 0) {
  avmcs_release(link);
  return -ENODEV;
 }


 switch (cardtype) {
 case 129: addcard = b1pcmcia_addcard_m1; break;
 case 128: addcard = b1pcmcia_addcard_m2; break;
 default:
 case 130: addcard = b1pcmcia_addcard_b1; break;
 }
 if ((i = (*addcard)(link->resource[0]->start, link->irq)) < 0) {
  dev_err(&link->dev,
   "avm_cs: failed to add AVM-Controller at i/o %#x, irq %d\n",
   (unsigned int) link->resource[0]->start, link->irq);
  avmcs_release(link);
  return -ENODEV;
 }
 return 0;

}
