
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct scsi_qla_host {scalar_t__ temperature; } ;


 int KERN_INFO ;
 int KERN_WARNING ;
 scalar_t__ QLA82XX_TEMP_NORMAL ;
 scalar_t__ QLA82XX_TEMP_PANIC ;
 scalar_t__ QLA82XX_TEMP_WARN ;
 int QLA8XXX_CRB_TEMP_STATE ;
 int QLA_ERROR ;
 int QLA_SUCCESS ;
 int ql4_printk (int ,struct scsi_qla_host*,char*,scalar_t__) ;
 scalar_t__ qla4_8xxx_rd_direct (struct scsi_qla_host*,int ) ;
 scalar_t__ qla82xx_get_temp_state (scalar_t__) ;
 scalar_t__ qla82xx_get_temp_val (scalar_t__) ;

__attribute__((used)) static int qla4_8xxx_check_temp(struct scsi_qla_host *ha)
{
 uint32_t temp, temp_state, temp_val;
 int status = QLA_SUCCESS;

 temp = qla4_8xxx_rd_direct(ha, QLA8XXX_CRB_TEMP_STATE);

 temp_state = qla82xx_get_temp_state(temp);
 temp_val = qla82xx_get_temp_val(temp);

 if (temp_state == QLA82XX_TEMP_PANIC) {
  ql4_printk(KERN_WARNING, ha, "Device temperature %d degrees C"
      " exceeds maximum allowed. Hardware has been shut"
      " down.\n", temp_val);
  status = QLA_ERROR;
 } else if (temp_state == QLA82XX_TEMP_WARN) {
  if (ha->temperature == QLA82XX_TEMP_NORMAL)
   ql4_printk(KERN_WARNING, ha, "Device temperature %d"
       " degrees C exceeds operating range."
       " Immediate action needed.\n", temp_val);
 } else {
  if (ha->temperature == QLA82XX_TEMP_WARN)
   ql4_printk(KERN_INFO, ha, "Device temperature is"
       " now %d degrees C in normal range.\n",
       temp_val);
 }
 ha->temperature = temp_state;
 return status;
}
