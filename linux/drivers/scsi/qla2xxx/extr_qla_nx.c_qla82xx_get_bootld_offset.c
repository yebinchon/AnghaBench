
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef size_t u32 ;
struct qla_hw_data {scalar_t__ fw_type; TYPE_2__* hablob; } ;
struct qla82xx_uri_data_desc {int findex; } ;
struct TYPE_4__ {TYPE_1__* fw; } ;
struct TYPE_3__ {int * data; } ;


 size_t BOOTLD_START ;
 scalar_t__ QLA82XX_UNIFIED_ROMIMAGE ;
 int QLA82XX_URI_BOOTLD_IDX_OFF ;
 int QLA82XX_URI_DIR_SECT_BOOTLD ;
 size_t cpu_to_le32 (int ) ;
 struct qla82xx_uri_data_desc* qla82xx_get_data_desc (struct qla_hw_data*,int ,int ) ;

__attribute__((used)) static u8 *
qla82xx_get_bootld_offset(struct qla_hw_data *ha)
{
 u32 offset = BOOTLD_START;
 struct qla82xx_uri_data_desc *uri_desc = ((void*)0);

 if (ha->fw_type == QLA82XX_UNIFIED_ROMIMAGE) {
  uri_desc = qla82xx_get_data_desc(ha,
      QLA82XX_URI_DIR_SECT_BOOTLD, QLA82XX_URI_BOOTLD_IDX_OFF);
  if (uri_desc)
   offset = cpu_to_le32(uri_desc->findex);
 }

 return (u8 *)&ha->hablob->fw->data[offset];
}
