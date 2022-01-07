
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint ;
typedef int u8 ;
typedef int u64 ;
struct srp_indirect_buf {int len; } ;
struct srp_direct_buf {int len; } ;
struct srp_cmd {int buf_fmt; int add_cdb_len; int * add_data; } ;
typedef int s8 ;
typedef enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;


 int BUG_ON (int) ;
 int BUILD_BUG_ON (int) ;
 int DMA_FROM_DEVICE ;
 int DMA_NONE ;
 int DMA_TO_DEVICE ;
 int SRP_DATA_DESC_DIRECT ;
 int SRP_DATA_DESC_INDIRECT ;
 int __same_type (int ,int ) ;
 int be32_to_cpu (int ) ;

int srp_get_desc_table(struct srp_cmd *srp_cmd, enum dma_data_direction *dir,
         u64 *data_len)
{
 struct srp_indirect_buf *idb;
 struct srp_direct_buf *db;
 uint add_cdb_offset;
 int rc;






 BUILD_BUG_ON(!__same_type(srp_cmd->add_data[0], (s8)0)
       && !__same_type(srp_cmd->add_data[0], (u8)0));

 BUG_ON(!dir);
 BUG_ON(!data_len);

 rc = 0;
 *data_len = 0;

 *dir = DMA_NONE;

 if (srp_cmd->buf_fmt & 0xf)
  *dir = DMA_FROM_DEVICE;
 else if (srp_cmd->buf_fmt >> 4)
  *dir = DMA_TO_DEVICE;

 add_cdb_offset = srp_cmd->add_cdb_len & ~3;
 if (((srp_cmd->buf_fmt & 0xf) == SRP_DATA_DESC_DIRECT) ||
     ((srp_cmd->buf_fmt >> 4) == SRP_DATA_DESC_DIRECT)) {
  db = (struct srp_direct_buf *)(srp_cmd->add_data
            + add_cdb_offset);
  *data_len = be32_to_cpu(db->len);
 } else if (((srp_cmd->buf_fmt & 0xf) == SRP_DATA_DESC_INDIRECT) ||
     ((srp_cmd->buf_fmt >> 4) == SRP_DATA_DESC_INDIRECT)) {
  idb = (struct srp_indirect_buf *)(srp_cmd->add_data
        + add_cdb_offset);

  *data_len = be32_to_cpu(idb->len);
 }
 return rc;
}
