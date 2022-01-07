
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct reserve_ticket {int error; scalar_t__ bytes; int list; } ;
struct btrfs_space_info {int lock; } ;
struct btrfs_fs_info {int dummy; } ;
typedef enum btrfs_reserve_flush_enum { ____Placeholder_btrfs_reserve_flush_enum } btrfs_reserve_flush_enum ;


 int ARRAY_SIZE (int ) ;
 int ASSERT (int) ;



 int ENOSPC ;
 int evict_flush_states ;
 int list_del_init (int *) ;
 int list_empty (int *) ;
 int priority_flush_states ;
 int priority_reclaim_metadata_space (struct btrfs_fs_info*,struct btrfs_space_info*,struct reserve_ticket*,int ,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int wait_reserve_ticket (struct btrfs_fs_info*,struct btrfs_space_info*,struct reserve_ticket*) ;

__attribute__((used)) static int handle_reserve_ticket(struct btrfs_fs_info *fs_info,
     struct btrfs_space_info *space_info,
     struct reserve_ticket *ticket,
     enum btrfs_reserve_flush_enum flush)
{
 int ret;

 switch (flush) {
 case 130:
  wait_reserve_ticket(fs_info, space_info, ticket);
  break;
 case 128:
  priority_reclaim_metadata_space(fs_info, space_info, ticket,
      priority_flush_states,
      ARRAY_SIZE(priority_flush_states));
  break;
 case 129:
  priority_reclaim_metadata_space(fs_info, space_info, ticket,
      evict_flush_states,
      ARRAY_SIZE(evict_flush_states));
  break;
 default:
  ASSERT(0);
  break;
 }

 spin_lock(&space_info->lock);
 ret = ticket->error;
 if (ticket->bytes || ticket->error) {





  list_del_init(&ticket->list);
  if (!ret)
   ret = -ENOSPC;
 }
 spin_unlock(&space_info->lock);
 ASSERT(list_empty(&ticket->list));






 ASSERT(!(ticket->bytes == 0 && ticket->error));
 return ret;
}
