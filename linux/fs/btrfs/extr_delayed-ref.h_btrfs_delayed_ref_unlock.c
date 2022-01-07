
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btrfs_delayed_ref_head {int mutex; } ;


 int mutex_unlock (int *) ;

__attribute__((used)) static inline void btrfs_delayed_ref_unlock(struct btrfs_delayed_ref_head *head)
{
 mutex_unlock(&head->mutex);
}
