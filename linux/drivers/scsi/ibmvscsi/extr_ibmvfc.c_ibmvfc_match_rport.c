
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ibmvfc_event {TYPE_1__* cmnd; } ;
typedef void fc_rport ;
struct TYPE_2__ {int device; } ;


 int scsi_target (int ) ;
 void* starget_to_rport (int ) ;

__attribute__((used)) static int ibmvfc_match_rport(struct ibmvfc_event *evt, void *rport)
{
 struct fc_rport *cmd_rport;

 if (evt->cmnd) {
  cmd_rport = starget_to_rport(scsi_target(evt->cmnd->device));
  if (cmd_rport == rport)
   return 1;
 }
 return 0;
}
