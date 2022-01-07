
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_target {scalar_t__ state; } ;


 int BUG_ON (int) ;
 scalar_t__ STARGET_DEL ;
 int scsi_target_reap_ref_put (struct scsi_target*) ;

void scsi_target_reap(struct scsi_target *starget)
{





 BUG_ON(starget->state == STARGET_DEL);
 scsi_target_reap_ref_put(starget);
}
