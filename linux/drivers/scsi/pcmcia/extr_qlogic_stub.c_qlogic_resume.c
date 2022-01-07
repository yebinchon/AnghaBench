
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct pcmcia_device {TYPE_1__** resource; TYPE_2__* priv; } ;
struct TYPE_4__ {int manf_id; } ;
typedef TYPE_2__ scsi_info_t ;
struct TYPE_3__ {scalar_t__ start; } ;


 int MANFID_MACNICA ;
 int MANFID_PIONEER ;
 int outb (int,scalar_t__) ;
 int pcmcia_enable_device (struct pcmcia_device*) ;
 int qlogicfas408_host_reset (int *) ;

__attribute__((used)) static int qlogic_resume(struct pcmcia_device *link)
{
 scsi_info_t *info = link->priv;
 int ret;

 ret = pcmcia_enable_device(link);
 if (ret)
  return ret;

 if ((info->manf_id == MANFID_MACNICA) ||
     (info->manf_id == MANFID_PIONEER) ||
     (info->manf_id == 0x0098)) {
  outb(0x80, link->resource[0]->start + 0xd);
  outb(0x24, link->resource[0]->start + 0x9);
  outb(0x04, link->resource[0]->start + 0xd);
 }

 qlogicfas408_host_reset(((void*)0));

 return 0;
}
