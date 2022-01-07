
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct scsi_cmnd {TYPE_2__* device; } ;
struct TYPE_10__ {int aborts; } ;
struct TYPE_11__ {TYPE_3__ stats; } ;
struct TYPE_9__ {TYPE_1__* host; } ;
struct TYPE_8__ {scalar_t__ hostdata; } ;
typedef TYPE_4__ FAS216_Info ;


 int FAILED ;
 int KERN_WARNING ;
 int SUCCESS ;
 int fas216_checkmagic (TYPE_4__*) ;
 int fas216_dumpstate (TYPE_4__*) ;
 int fas216_find_command (TYPE_4__*,struct scsi_cmnd*) ;
 int print_debug_list () ;



 int scmd_printk (int ,struct scsi_cmnd*,char*,...) ;

int fas216_eh_abort(struct scsi_cmnd *SCpnt)
{
 FAS216_Info *info = (FAS216_Info *)SCpnt->device->host->hostdata;
 int result = FAILED;

 fas216_checkmagic(info);

 info->stats.aborts += 1;

 scmd_printk(KERN_WARNING, SCpnt, "abort command\n");

 print_debug_list();
 fas216_dumpstate(info);

 switch (fas216_find_command(info, SCpnt)) {





 case 128:
  scmd_printk(KERN_WARNING, SCpnt, "abort %p success\n", SCpnt);
  result = SUCCESS;
  break;






 case 129:




 default:
 case 130:
  scmd_printk(KERN_WARNING, SCpnt, "abort %p failed\n", SCpnt);
  break;
 }

 return result;
}
