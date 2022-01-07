
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef void uint8_t ;
typedef int uint32_t ;
struct qla_hw_data {int flt_region_vpd_nvram; } ;
struct TYPE_3__ {struct qla_hw_data* hw; } ;
typedef TYPE_1__ scsi_qla_host_t ;


 int cpu_to_le32s (int*) ;
 int flash_data_addr (struct qla_hw_data*,int) ;
 scalar_t__ qla24xx_read_flash_dword (struct qla_hw_data*,int,int*) ;

uint8_t *
qla25xx_read_nvram_data(scsi_qla_host_t *vha, void *buf, uint32_t naddr,
    uint32_t bytes)
{
 struct qla_hw_data *ha = vha->hw;
 uint32_t *dwptr = buf;
 uint32_t i;


 naddr = flash_data_addr(ha, ha->flt_region_vpd_nvram | naddr);
 bytes >>= 2;
 for (i = 0; i < bytes; i++, naddr++, dwptr++) {
  if (qla24xx_read_flash_dword(ha, naddr, dwptr))
   break;

  cpu_to_le32s(dwptr);
 }

 return buf;
}
