
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct send_ctx {int dummy; } ;


 int BTRFS_UUID_SIZE ;
 int tlv_put (struct send_ctx*,int ,int const*,int ) ;

__attribute__((used)) static int tlv_put_uuid(struct send_ctx *sctx, u16 attr,
   const u8 *uuid)
{
 return tlv_put(sctx, attr, uuid, BTRFS_UUID_SIZE);
}
