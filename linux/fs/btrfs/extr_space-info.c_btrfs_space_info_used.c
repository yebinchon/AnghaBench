
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct btrfs_space_info {int bytes_may_use; scalar_t__ bytes_readonly; scalar_t__ bytes_pinned; scalar_t__ bytes_reserved; scalar_t__ bytes_used; } ;


 int ASSERT (struct btrfs_space_info*) ;

u64 btrfs_space_info_used(struct btrfs_space_info *s_info,
     bool may_use_included)
{
 ASSERT(s_info);
 return s_info->bytes_used + s_info->bytes_reserved +
  s_info->bytes_pinned + s_info->bytes_readonly +
  (may_use_included ? s_info->bytes_may_use : 0);
}
