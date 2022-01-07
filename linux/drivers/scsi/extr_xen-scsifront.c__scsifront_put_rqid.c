
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint32_t ;
struct vscsifrnt_info {scalar_t__ wait_ring_available; int ** shadow; int shadow_free_bitmap; } ;


 int VSCSIIF_MAX_REQS ;
 int __set_bit (size_t,int ) ;
 int bitmap_empty (int ,int ) ;

__attribute__((used)) static int _scsifront_put_rqid(struct vscsifrnt_info *info, uint32_t id)
{
 int empty = bitmap_empty(info->shadow_free_bitmap, VSCSIIF_MAX_REQS);

 __set_bit(id, info->shadow_free_bitmap);
 info->shadow[id] = ((void*)0);

 return empty || info->wait_ring_available;
}
