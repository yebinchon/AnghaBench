
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct scsi_cmnd {TYPE_1__* device; } ;
struct iscsi_tm {int opcode; int flags; int rtt; int lun; } ;
struct TYPE_2__ {int lun; } ;


 int ISCSI_FLAG_CMD_FINAL ;
 int ISCSI_FLAG_TM_FUNC_MASK ;
 int ISCSI_OP_IMMEDIATE ;
 int ISCSI_OP_SCSI_TMFUNC ;
 int ISCSI_TM_FUNC_LOGICAL_UNIT_RESET ;
 int RESERVED_ITT ;
 int int_to_scsilun (int ,int *) ;
 int memset (struct iscsi_tm*,int ,int) ;

__attribute__((used)) static void iscsi_prep_lun_reset_pdu(struct scsi_cmnd *sc, struct iscsi_tm *hdr)
{
 memset(hdr, 0, sizeof(*hdr));
 hdr->opcode = ISCSI_OP_SCSI_TMFUNC | ISCSI_OP_IMMEDIATE;
 hdr->flags = ISCSI_TM_FUNC_LOGICAL_UNIT_RESET & ISCSI_FLAG_TM_FUNC_MASK;
 hdr->flags |= ISCSI_FLAG_CMD_FINAL;
 int_to_scsilun(sc->device->lun, &hdr->lun);
 hdr->rtt = RESERVED_ITT;
}
