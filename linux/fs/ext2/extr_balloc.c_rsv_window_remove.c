
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct super_block {int dummy; } ;
struct ext2_reserve_window_node {int rsv_node; scalar_t__ rsv_alloc_hit; void* rsv_end; void* rsv_start; } ;
struct TYPE_2__ {int s_rsv_window_root; } ;


 void* EXT2_RESERVE_WINDOW_NOT_ALLOCATED ;
 TYPE_1__* EXT2_SB (struct super_block*) ;
 int rb_erase (int *,int *) ;

__attribute__((used)) static void rsv_window_remove(struct super_block *sb,
         struct ext2_reserve_window_node *rsv)
{
 rsv->rsv_start = EXT2_RESERVE_WINDOW_NOT_ALLOCATED;
 rsv->rsv_end = EXT2_RESERVE_WINDOW_NOT_ALLOCATED;
 rsv->rsv_alloc_hit = 0;
 rb_erase(&rsv->rsv_node, &EXT2_SB(sb)->s_rsv_window_root);
}
