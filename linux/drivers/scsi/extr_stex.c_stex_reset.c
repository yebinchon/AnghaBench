
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct st_hba {int dummy; } ;
struct scsi_cmnd {TYPE_1__* device; } ;
struct TYPE_4__ {int * hostdata; } ;
struct TYPE_3__ {TYPE_2__* host; } ;


 int FAILED ;
 int KERN_INFO ;
 int SUCCESS ;
 int shost_printk (int ,TYPE_2__*,char*) ;
 scalar_t__ stex_do_reset (struct st_hba*) ;

__attribute__((used)) static int stex_reset(struct scsi_cmnd *cmd)
{
 struct st_hba *hba;

 hba = (struct st_hba *) &cmd->device->host->hostdata[0];

 shost_printk(KERN_INFO, cmd->device->host,
       "resetting host\n");

 return stex_do_reset(hba) ? FAILED : SUCCESS;
}
