
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ScsiInqData {int Vers; int RDF; int Flags; } ;
struct DeviceCtlBlk {int dev_mode; int max_command; int sync_mode; TYPE_1__* acb; } ;
struct TYPE_2__ {int tag_max_num; } ;


 int EN_TAG_QUEUEING ;
 int NTC_DO_TAG_QUEUEING ;
 int SCSI_INQ_CMDQUEUE ;
 int tagq_blacklist (char*) ;

__attribute__((used)) static void disc_tagq_set(struct DeviceCtlBlk *dcb, struct ScsiInqData *ptr)
{

 if ((ptr->Vers & 0x07) >= 2 || (ptr->RDF & 0x0F) == 2) {
  if ((ptr->Flags & SCSI_INQ_CMDQUEUE)
      && (dcb->dev_mode & NTC_DO_TAG_QUEUEING) &&



      !tagq_blacklist(((char *)ptr) + 8)) {
   if (dcb->max_command == 1)
    dcb->max_command =
        dcb->acb->tag_max_num;
   dcb->sync_mode |= EN_TAG_QUEUEING;

  } else
   dcb->max_command = 1;
 }
}
