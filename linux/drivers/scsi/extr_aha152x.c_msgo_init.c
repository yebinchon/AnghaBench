
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct Scsi_Host {int dummy; } ;
struct TYPE_5__ {int phase; } ;
struct TYPE_7__ {TYPE_2__* device; TYPE_1__ SCp; } ;
struct TYPE_6__ {int lun; } ;


 int ADDMSGO (int ) ;
 TYPE_3__* CURRENT_SC ;
 int IDENTIFY (int ,int ) ;
 int KERN_INFO ;
 int MESSAGE_REJECT ;
 scalar_t__ MSGOLEN ;
 int RECONNECT ;
 int SYNCNEG ;
 scalar_t__ SYNCRATE ;
 int scmd_printk (int ,TYPE_3__*,char*) ;
 int syncneg ;

__attribute__((used)) static void msgo_init(struct Scsi_Host *shpnt)
{
 if(MSGOLEN==0) {
  if((CURRENT_SC->SCp.phase & syncneg) && SYNCNEG==2 && SYNCRATE==0) {
   ADDMSGO(IDENTIFY(RECONNECT, CURRENT_SC->device->lun));
  } else {
   scmd_printk(KERN_INFO, CURRENT_SC,
        "unexpected MESSAGE OUT phase; rejecting\n");
   ADDMSGO(MESSAGE_REJECT);
  }
 }

}
