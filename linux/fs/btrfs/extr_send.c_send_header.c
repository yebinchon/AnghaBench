
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct send_ctx {int send_off; int send_filp; } ;
struct btrfs_stream_header {int version; int magic; } ;
typedef int hdr ;


 int BTRFS_SEND_STREAM_MAGIC ;
 int BTRFS_SEND_STREAM_VERSION ;
 int cpu_to_le32 (int ) ;
 int strcpy (int ,int ) ;
 int write_buf (int ,struct btrfs_stream_header*,int,int *) ;

__attribute__((used)) static int send_header(struct send_ctx *sctx)
{
 struct btrfs_stream_header hdr;

 strcpy(hdr.magic, BTRFS_SEND_STREAM_MAGIC);
 hdr.version = cpu_to_le32(BTRFS_SEND_STREAM_VERSION);

 return write_buf(sctx->send_filp, &hdr, sizeof(hdr),
     &sctx->send_off);
}
