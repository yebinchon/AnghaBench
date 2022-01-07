
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_5__ {scalar_t__ fac_supported; } ;
struct qla_hw_data {int fdt_block_size; int fdt_erase_cmd; TYPE_1__ flags; } ;
struct TYPE_6__ {struct qla_hw_data* hw; } ;
typedef TYPE_2__ scsi_qla_host_t ;


 int flash_data_addr (struct qla_hw_data*,int) ;
 int qla24xx_write_flash_dword (struct qla_hw_data*,int ,int) ;
 int qla81xx_fac_erase_sector (TYPE_2__*,int ,int ) ;

__attribute__((used)) static int
qla24xx_erase_sector(scsi_qla_host_t *vha, uint32_t fdata)
{
 struct qla_hw_data *ha = vha->hw;
 uint32_t start, finish;

 if (ha->flags.fac_supported) {
  start = fdata >> 2;
  finish = start + (ha->fdt_block_size >> 2) - 1;
  return qla81xx_fac_erase_sector(vha, flash_data_addr(ha,
      start), flash_data_addr(ha, finish));
 }

 return qla24xx_write_flash_dword(ha, ha->fdt_erase_cmd,
     (fdata & 0xff00) | ((fdata << 16) & 0xff0000) |
     ((fdata >> 16) & 0xff));
}
