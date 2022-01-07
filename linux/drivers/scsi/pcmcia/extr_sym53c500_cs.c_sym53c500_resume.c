
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct scsi_info_t {int manf_id; } ;
struct pcmcia_device {TYPE_1__** resource; struct scsi_info_t* priv; } ;
struct TYPE_2__ {scalar_t__ start; } ;


 int MANFID_MACNICA ;
 int MANFID_PIONEER ;
 int SYM53C500_int_host_reset (scalar_t__) ;
 int outb (int,scalar_t__) ;

__attribute__((used)) static int sym53c500_resume(struct pcmcia_device *link)
{
 struct scsi_info_t *info = link->priv;


 if ((info->manf_id == MANFID_MACNICA) ||
     (info->manf_id == MANFID_PIONEER) ||
     (info->manf_id == 0x0098)) {
  outb(0x80, link->resource[0]->start + 0xd);
  outb(0x24, link->resource[0]->start + 0x9);
  outb(0x04, link->resource[0]->start + 0xd);
 }




 SYM53C500_int_host_reset(link->resource[0]->start);

 return 0;
}
