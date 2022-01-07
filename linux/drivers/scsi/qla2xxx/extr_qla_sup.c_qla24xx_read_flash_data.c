
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ ulong ;
typedef scalar_t__ uint32_t ;
struct qla_hw_data {int dummy; } ;
struct TYPE_3__ {struct qla_hw_data* hw; } ;
typedef TYPE_1__ scsi_qla_host_t ;


 int QLA_SUCCESS ;
 int cpu_to_le32s (scalar_t__*) ;
 scalar_t__ flash_data_addr (struct qla_hw_data*,scalar_t__) ;
 int qla24xx_read_flash_dword (struct qla_hw_data*,scalar_t__,scalar_t__*) ;

int
qla24xx_read_flash_data(scsi_qla_host_t *vha, uint32_t *dwptr, uint32_t faddr,
    uint32_t dwords)
{
 ulong i;
 int ret = QLA_SUCCESS;
 struct qla_hw_data *ha = vha->hw;


 faddr = flash_data_addr(ha, faddr);
 for (i = 0; i < dwords; i++, faddr++, dwptr++) {
  ret = qla24xx_read_flash_dword(ha, faddr, dwptr);
  if (ret != QLA_SUCCESS)
   break;
  cpu_to_le32s(dwptr);
 }

 return ret;
}
