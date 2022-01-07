
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct send_ctx {int send_size; scalar_t__ send_buf; } ;
struct btrfs_cmd_header {int cmd; } ;


 int BUG_ON (int) ;
 int EINVAL ;
 scalar_t__ WARN_ON (int) ;
 int cpu_to_le16 (int) ;

__attribute__((used)) static int begin_cmd(struct send_ctx *sctx, int cmd)
{
 struct btrfs_cmd_header *hdr;

 if (WARN_ON(!sctx->send_buf))
  return -EINVAL;

 BUG_ON(sctx->send_size);

 sctx->send_size += sizeof(*hdr);
 hdr = (struct btrfs_cmd_header *)sctx->send_buf;
 hdr->cmd = cpu_to_le16(cmd);

 return 0;
}
