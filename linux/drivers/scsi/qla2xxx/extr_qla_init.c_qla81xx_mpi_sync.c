
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_6__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint32_t ;
typedef int uint16_t ;
struct TYPE_7__ {TYPE_6__* hw; } ;
typedef TYPE_1__ scsi_qla_host_t ;
struct TYPE_8__ {int pdev; } ;


 int IS_QLA81XX (TYPE_6__*) ;
 int MPS_MASK ;
 int QLA_SUCCESS ;
 int pci_read_config_word (int ,int,int*) ;
 int ql_log (int ,TYPE_1__*,int,char*) ;
 int ql_log_warn ;
 int qla2x00_read_ram_word (TYPE_1__*,int,int*) ;
 int qla2x00_write_ram_word (TYPE_1__*,int,int) ;

__attribute__((used)) static int
qla81xx_mpi_sync(scsi_qla_host_t *vha)
{

 int rval;
 uint16_t dc;
 uint32_t dw;

 if (!IS_QLA81XX(vha->hw))
  return QLA_SUCCESS;

 rval = qla2x00_write_ram_word(vha, 0x7c00, 1);
 if (rval != QLA_SUCCESS) {
  ql_log(ql_log_warn, vha, 0x0105,
      "Unable to acquire semaphore.\n");
  goto done;
 }

 pci_read_config_word(vha->hw->pdev, 0x54, &dc);
 rval = qla2x00_read_ram_word(vha, 0x7a15, &dw);
 if (rval != QLA_SUCCESS) {
  ql_log(ql_log_warn, vha, 0x0067, "Unable to read sync.\n");
  goto done_release;
 }

 dc &= 0xe0;
 if (dc == (dw & 0xe0))
  goto done_release;

 dw &= ~0xe0;
 dw |= dc;
 rval = qla2x00_write_ram_word(vha, 0x7a15, dw);
 if (rval != QLA_SUCCESS) {
  ql_log(ql_log_warn, vha, 0x0114, "Unable to gain sync.\n");
 }

done_release:
 rval = qla2x00_write_ram_word(vha, 0x7c00, 0);
 if (rval != QLA_SUCCESS) {
  ql_log(ql_log_warn, vha, 0x006d,
      "Unable to release semaphore.\n");
 }

done:
 return rval;
}
