
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef scalar_t__ u16 ;
struct ps3av_send_hdr {int cid; scalar_t__ size; int version; } ;


 scalar_t__ PS3AV_HDR_SIZE ;
 int PS3AV_VERSION ;

void ps3av_set_hdr(u32 cid, u16 size, struct ps3av_send_hdr *hdr)
{
 hdr->version = PS3AV_VERSION;
 hdr->size = size - PS3AV_HDR_SIZE;
 hdr->cid = cid;
}
