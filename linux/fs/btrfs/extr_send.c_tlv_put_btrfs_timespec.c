
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct send_ctx {int dummy; } ;
struct extent_buffer {int dummy; } ;
struct btrfs_timespec {int dummy; } ;
typedef int bts ;


 int read_extent_buffer (struct extent_buffer*,struct btrfs_timespec*,unsigned long,int) ;
 int tlv_put (struct send_ctx*,int ,struct btrfs_timespec*,int) ;

__attribute__((used)) static int tlv_put_btrfs_timespec(struct send_ctx *sctx, u16 attr,
      struct extent_buffer *eb,
      struct btrfs_timespec *ts)
{
 struct btrfs_timespec bts;
 read_extent_buffer(eb, &bts, (unsigned long)ts, sizeof(bts));
 return tlv_put(sctx, attr, &bts, sizeof(bts));
}
