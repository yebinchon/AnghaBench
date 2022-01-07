
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef scalar_t__ uint32_t ;
typedef int uint16_t ;
struct scsi_qla_host {struct qla_hw_data* hw; } ;
struct qla_hw_data {scalar_t__ flt; } ;
struct qla_flt_region {scalar_t__ start; } ;
struct qla_flt_header {int length; } ;


 int QLA_FUNCTION_FAILED ;
 int QLA_SUCCESS ;
 int le16_to_cpu (int ) ;
 int memcpy (int *,struct qla_flt_region*,int) ;

__attribute__((used)) static int
qla28xx_get_flash_region(struct scsi_qla_host *vha, uint32_t start,
    struct qla_flt_region *region)
{
 struct qla_hw_data *ha = vha->hw;
 struct qla_flt_header *flt;
 struct qla_flt_region *flt_reg;
 uint16_t cnt;
 int rval = QLA_FUNCTION_FAILED;

 if (!ha->flt)
  return QLA_FUNCTION_FAILED;

 flt = (struct qla_flt_header *)ha->flt;
 flt_reg = (struct qla_flt_region *)&flt[1];
 cnt = le16_to_cpu(flt->length) / sizeof(struct qla_flt_region);

 for (; cnt; cnt--, flt_reg++) {
  if (flt_reg->start == start) {
   memcpy((uint8_t *)region, flt_reg,
       sizeof(struct qla_flt_region));
   rval = QLA_SUCCESS;
   break;
  }
 }

 return rval;
}
