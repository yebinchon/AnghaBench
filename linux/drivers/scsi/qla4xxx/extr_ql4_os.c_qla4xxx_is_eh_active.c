
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct Scsi_Host {scalar_t__ shost_state; } ;


 scalar_t__ SHOST_RECOVERY ;

__attribute__((used)) static int qla4xxx_is_eh_active(struct Scsi_Host *shost)
{
 if (shost->shost_state == SHOST_RECOVERY)
  return 1;
 return 0;
}
