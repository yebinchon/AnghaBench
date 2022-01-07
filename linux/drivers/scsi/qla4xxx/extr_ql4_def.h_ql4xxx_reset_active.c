
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_qla_host {int dpc_flags; } ;


 int DPC_HA_UNRECOVERABLE ;
 int DPC_RESET_ACTIVE ;
 int DPC_RESET_HA ;
 int DPC_RESET_HA_FW_CONTEXT ;
 int DPC_RESET_HA_INTR ;
 int DPC_RETRY_RESET_HA ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static inline int ql4xxx_reset_active(struct scsi_qla_host *ha)
{
 return test_bit(DPC_RESET_ACTIVE, &ha->dpc_flags) ||
        test_bit(DPC_RESET_HA, &ha->dpc_flags) ||
        test_bit(DPC_RETRY_RESET_HA, &ha->dpc_flags) ||
        test_bit(DPC_RESET_HA_INTR, &ha->dpc_flags) ||
        test_bit(DPC_RESET_HA_FW_CONTEXT, &ha->dpc_flags) ||
        test_bit(DPC_HA_UNRECOVERABLE, &ha->dpc_flags);

}
