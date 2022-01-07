
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct scsi_cmnd {int result; int (* scsi_done ) (struct scsi_cmnd*) ;int * host_scribble; TYPE_2__* device; } ;
struct Scsi_Host {int dummy; } ;
struct TYPE_6__ {TYPE_1__* device; } ;
struct TYPE_5__ {int soft_reset; } ;
struct TYPE_4__ {int soft_reset; } ;


 TYPE_3__* CURRENT_SC ;
 int DID_RESET ;
 struct scsi_cmnd* DISCONNECTED_SC ;
 int KERN_NOTICE ;
 struct scsi_cmnd* SCNEXT (struct scsi_cmnd*) ;
 int done (struct Scsi_Host*,int) ;
 int kfree (int *) ;
 int remove_SC (struct scsi_cmnd**,struct scsi_cmnd*) ;
 int shost_printk (int ,struct Scsi_Host*,char*) ;
 int stub1 (struct scsi_cmnd*) ;

__attribute__((used)) static void rsti_run(struct Scsi_Host *shpnt)
{
 struct scsi_cmnd *ptr;

 shost_printk(KERN_NOTICE, shpnt, "scsi reset in\n");

 ptr=DISCONNECTED_SC;
 while(ptr) {
  struct scsi_cmnd *next = SCNEXT(ptr);

  if (!ptr->device->soft_reset) {
   remove_SC(&DISCONNECTED_SC, ptr);

   kfree(ptr->host_scribble);
   ptr->host_scribble=((void*)0);

   ptr->result = DID_RESET << 16;
   ptr->scsi_done(ptr);
  }

  ptr = next;
 }

 if(CURRENT_SC && !CURRENT_SC->device->soft_reset)
  done(shpnt, DID_RESET << 16 );
}
