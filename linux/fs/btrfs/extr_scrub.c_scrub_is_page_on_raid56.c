
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct scrub_page {TYPE_2__* recover; } ;
struct TYPE_4__ {TYPE_1__* bbio; } ;
struct TYPE_3__ {int map_type; } ;


 int BTRFS_BLOCK_GROUP_RAID56_MASK ;

__attribute__((used)) static inline int scrub_is_page_on_raid56(struct scrub_page *page)
{
 return page->recover &&
        (page->recover->bbio->map_type & BTRFS_BLOCK_GROUP_RAID56_MASK);
}
