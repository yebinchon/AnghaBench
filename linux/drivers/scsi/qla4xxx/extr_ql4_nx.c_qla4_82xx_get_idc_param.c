
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef scalar_t__ uint32_t ;
struct scsi_qla_host {void* nx_reset_timeout; void* nx_dev_init_timeout; scalar_t__ request_ring; } ;


 int DEBUG2 (int ) ;
 int KERN_DEBUG ;
 int QLA82XX_IDC_PARAM_ADDR ;
 void* ROM_DEV_INIT_TIMEOUT ;
 void* ROM_DRV_RESET_ACK_TIMEOUT ;
 scalar_t__ __constant_cpu_to_le32 (int) ;
 int is_qla8022 (struct scsi_qla_host*) ;
 void* le32_to_cpu (scalar_t__) ;
 int ql4_printk (int ,struct scsi_qla_host*,char*,void*) ;
 int qla4_82xx_read_optrom_data (struct scsi_qla_host*,int *,int ,int) ;

__attribute__((used)) static void
qla4_82xx_get_idc_param(struct scsi_qla_host *ha)
{

 uint32_t *wptr;

 if (!is_qla8022(ha))
  return;
 wptr = (uint32_t *)ha->request_ring;
 qla4_82xx_read_optrom_data(ha, (uint8_t *)ha->request_ring,
   0x003e885c , 8);

 if (*wptr == __constant_cpu_to_le32(0xffffffff)) {
  ha->nx_dev_init_timeout = ROM_DEV_INIT_TIMEOUT;
  ha->nx_reset_timeout = ROM_DRV_RESET_ACK_TIMEOUT;
 } else {
  ha->nx_dev_init_timeout = le32_to_cpu(*wptr++);
  ha->nx_reset_timeout = le32_to_cpu(*wptr);
 }

 DEBUG2(ql4_printk(KERN_DEBUG, ha,
  "ha->nx_dev_init_timeout = %d\n", ha->nx_dev_init_timeout));
 DEBUG2(ql4_printk(KERN_DEBUG, ha,
  "ha->nx_reset_timeout = %d\n", ha->nx_reset_timeout));
 return;
}
