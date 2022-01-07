
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct send_ctx {scalar_t__ send_size; int * cmd_send_size; int total_send_size; int send_off; scalar_t__ send_buf; int send_filp; } ;
struct btrfs_cmd_header {int cmd; void* crc; void* len; } ;


 scalar_t__ btrfs_crc32c (int ,unsigned char*,scalar_t__) ;
 void* cpu_to_le32 (scalar_t__) ;
 size_t le16_to_cpu (int ) ;
 int write_buf (int ,scalar_t__,scalar_t__,int *) ;

__attribute__((used)) static int send_cmd(struct send_ctx *sctx)
{
 int ret;
 struct btrfs_cmd_header *hdr;
 u32 crc;

 hdr = (struct btrfs_cmd_header *)sctx->send_buf;
 hdr->len = cpu_to_le32(sctx->send_size - sizeof(*hdr));
 hdr->crc = 0;

 crc = btrfs_crc32c(0, (unsigned char *)sctx->send_buf, sctx->send_size);
 hdr->crc = cpu_to_le32(crc);

 ret = write_buf(sctx->send_filp, sctx->send_buf, sctx->send_size,
     &sctx->send_off);

 sctx->total_send_size += sctx->send_size;
 sctx->cmd_send_size[le16_to_cpu(hdr->cmd)] += sctx->send_size;
 sctx->send_size = 0;

 return ret;
}
