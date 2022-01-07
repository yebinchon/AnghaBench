
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct scsi_cmnd {int * host_scribble; TYPE_1__* device; } ;
struct Scsi_Host {int dummy; } ;
struct TYPE_4__ {int commands; } ;
struct TYPE_3__ {int soft_reset; } ;


 TYPE_2__* HOSTDATA (struct Scsi_Host*) ;
 int KERN_DEBUG ;
 scalar_t__ SCDATA (struct scsi_cmnd*) ;
 struct scsi_cmnd* SCNEXT (struct scsi_cmnd*) ;
 int kfree (int *) ;
 int remove_SC (struct scsi_cmnd**,struct scsi_cmnd*) ;
 int scmd_printk (int ,struct scsi_cmnd*,char*,struct scsi_cmnd*) ;

__attribute__((used)) static void free_hard_reset_SCs(struct Scsi_Host *shpnt,
    struct scsi_cmnd **SCs)
{
 struct scsi_cmnd *ptr;

 ptr=*SCs;
 while(ptr) {
  struct scsi_cmnd *next;

  if(SCDATA(ptr)) {
   next = SCNEXT(ptr);
  } else {
   scmd_printk(KERN_DEBUG, ptr,
        "queue corrupted at %p\n", ptr);
   next = ((void*)0);
  }

  if (!ptr->device->soft_reset) {
   remove_SC(SCs, ptr);
   HOSTDATA(shpnt)->commands--;
   kfree(ptr->host_scribble);
   ptr->host_scribble=((void*)0);
  }

  ptr = next;
 }
}
