
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_target {int reap_ref; } ;


 int kref_put (int *,int ) ;
 int scsi_target_reap_ref_release ;

__attribute__((used)) static void scsi_target_reap_ref_put(struct scsi_target *starget)
{
 kref_put(&starget->reap_ref, scsi_target_reap_ref_release);
}
