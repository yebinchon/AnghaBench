
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct scsi_cmnd {TYPE_1__* device; } ;
struct TYPE_2__ {int host; } ;


 scalar_t__ LPFC_PG_TYPE_NO_DIF ;
 scalar_t__ SHOST_DIX_GUARD_IP ;
 scalar_t__ lpfc_prot_group_type (int *,struct scsi_cmnd*) ;
 scalar_t__ scsi_host_get_guard (int ) ;

__attribute__((used)) static inline unsigned
lpfc_cmd_guard_csum(struct scsi_cmnd *sc)
{
 if (lpfc_prot_group_type(((void*)0), sc) == LPFC_PG_TYPE_NO_DIF)
  return 0;
 if (scsi_host_get_guard(sc->device->host) == SHOST_DIX_GUARD_IP)
  return 1;
 return 0;
}
