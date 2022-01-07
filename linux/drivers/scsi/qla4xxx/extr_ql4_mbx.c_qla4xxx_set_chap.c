
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
typedef int uint16_t ;
struct TYPE_2__ {int flt_chap_size; int flt_region_chap; } ;
struct scsi_qla_host {int port_num; int chap_dma_pool; scalar_t__ chap_list; TYPE_1__ hw; } ;
struct ql4_chap_table {int cookie; int name; int secret; int secret_len; int flags; } ;
typedef int dma_addr_t ;


 int BIT_6 ;
 int BIT_7 ;
 int CHAP_VALID_COOKIE ;
 int EINVAL ;
 int ENOMEM ;
 int FLASH_CHAP_OFFSET ;
 int FLASH_OPT_RMW_COMMIT ;
 int FLASH_RAW_ACCESS_ADDR ;
 int GFP_KERNEL ;
 int MAX_CHAP_ENTRIES_40XX ;
 scalar_t__ MAX_CHAP_NAME_LEN ;
 scalar_t__ MAX_CHAP_SECRET_LEN ;
 int QLA_ERROR ;
 int QLA_SUCCESS ;
 int __constant_cpu_to_le16 (int ) ;
 int dma_pool_free (int ,struct ql4_chap_table*,int ) ;
 struct ql4_chap_table* dma_pool_zalloc (int ,int ,int *) ;
 scalar_t__ is_qla40XX (struct scsi_qla_host*) ;
 int memcpy (struct ql4_chap_table*,struct ql4_chap_table*,int) ;
 int qla4xxx_set_flash (struct scsi_qla_host*,int ,int,int,int ) ;
 int strlen (char*) ;
 int strncpy (int ,char*,scalar_t__) ;

int qla4xxx_set_chap(struct scsi_qla_host *ha, char *username, char *password,
       uint16_t idx, int bidi)
{
 int ret = 0;
 int rval = QLA_ERROR;
 uint32_t offset = 0;
 struct ql4_chap_table *chap_table;
 uint32_t chap_size = 0;
 dma_addr_t chap_dma;

 chap_table = dma_pool_zalloc(ha->chap_dma_pool, GFP_KERNEL, &chap_dma);
 if (chap_table == ((void*)0)) {
  ret = -ENOMEM;
  goto exit_set_chap;
 }

 if (bidi)
  chap_table->flags |= BIT_6;
 else
  chap_table->flags |= BIT_7;
 chap_table->secret_len = strlen(password);
 strncpy(chap_table->secret, password, MAX_CHAP_SECRET_LEN - 1);
 strncpy(chap_table->name, username, MAX_CHAP_NAME_LEN - 1);
 chap_table->cookie = __constant_cpu_to_le16(CHAP_VALID_COOKIE);

 if (is_qla40XX(ha)) {
  chap_size = MAX_CHAP_ENTRIES_40XX * sizeof(*chap_table);
  offset = FLASH_CHAP_OFFSET;
 } else {


  chap_size = ha->hw.flt_chap_size / 2;
  offset = FLASH_RAW_ACCESS_ADDR + (ha->hw.flt_region_chap << 2);
  if (ha->port_num == 1)
   offset += chap_size;
 }

 offset += (idx * sizeof(struct ql4_chap_table));
 rval = qla4xxx_set_flash(ha, chap_dma, offset,
    sizeof(struct ql4_chap_table),
    FLASH_OPT_RMW_COMMIT);

 if (rval == QLA_SUCCESS && ha->chap_list) {

  memcpy((struct ql4_chap_table *)ha->chap_list + idx,
         chap_table, sizeof(struct ql4_chap_table));
 }
 dma_pool_free(ha->chap_dma_pool, chap_table, chap_dma);
 if (rval != QLA_SUCCESS)
  ret = -EINVAL;

exit_set_chap:
 return ret;
}
