
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint ;
typedef int u8 ;
typedef int u64 ;
struct srp_indirect_buf {int len; } ;
struct srp_direct_buf {int len; } ;
struct srp_cmd {int add_cdb_len; int buf_fmt; int add_data; } ;
typedef enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;


 int DMA_TO_DEVICE ;



 int be32_to_cpu (int ) ;
 scalar_t__ data_out_desc_size (struct srp_cmd*) ;
 int pr_err (char*,int) ;

u64 srp_data_length(struct srp_cmd *cmd, enum dma_data_direction dir)
{
 struct srp_direct_buf *md;
 struct srp_indirect_buf *id;
 u64 len = 0;
 uint offset = cmd->add_cdb_len & ~3;
 u8 fmt;

 if (dir == DMA_TO_DEVICE) {
  fmt = cmd->buf_fmt >> 4;
 } else {
  fmt = cmd->buf_fmt & ((1U << 4) - 1);
  offset += data_out_desc_size(cmd);
 }

 switch (fmt) {
 case 128:
  break;
 case 130:
  md = (struct srp_direct_buf *)(cmd->add_data + offset);
  len = be32_to_cpu(md->len);
  break;
 case 129:
  id = (struct srp_indirect_buf *)(cmd->add_data + offset);
  len = be32_to_cpu(id->len);
  break;
 default:
  pr_err("invalid data format %x\n", fmt);
  break;
 }
 return len;
}
