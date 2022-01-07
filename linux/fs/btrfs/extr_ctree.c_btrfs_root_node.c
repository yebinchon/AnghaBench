
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct extent_buffer {int refs; } ;
struct btrfs_root {int node; } ;


 scalar_t__ atomic_inc_not_zero (int *) ;
 struct extent_buffer* rcu_dereference (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int synchronize_rcu () ;

struct extent_buffer *btrfs_root_node(struct btrfs_root *root)
{
 struct extent_buffer *eb;

 while (1) {
  rcu_read_lock();
  eb = rcu_dereference(root->node);







  if (atomic_inc_not_zero(&eb->refs)) {
   rcu_read_unlock();
   break;
  }
  rcu_read_unlock();
  synchronize_rcu();
 }
 return eb;
}
