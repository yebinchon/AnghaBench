
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct scsi_cmnd {int* cmnd; int tag; TYPE_1__* device; } ;
struct TYPE_6__ {int removes; int writes; int reads; int miscs; } ;
struct TYPE_7__ {TYPE_2__ stats; int busyluns; } ;
struct TYPE_5__ {int current_tag; int id; int lun; scalar_t__ simple_tags; } ;
typedef TYPE_3__ FAS216_Info ;


 int INQUIRY ;



 int REQUEST_SENSE ;



 int set_bit (scalar_t__,int ) ;

__attribute__((used)) static void fas216_allocate_tag(FAS216_Info *info, struct scsi_cmnd *SCpnt)
{
  set_bit(SCpnt->device->id * 8 +
   (u8)(SCpnt->device->lun & 0x7), info->busyluns);

 info->stats.removes += 1;
 switch (SCpnt->cmnd[0]) {
 case 128:
 case 130:
 case 129:
  info->stats.writes += 1;
  break;
 case 131:
 case 133:
 case 132:
  info->stats.reads += 1;
  break;
 default:
  info->stats.miscs += 1;
  break;
 }
}
