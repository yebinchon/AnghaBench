
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btrfs_work {int flags; } ;


 int WORK_HIGH_PRIO_BIT ;
 int set_bit (int ,int *) ;

void btrfs_set_work_high_priority(struct btrfs_work *work)
{
 set_bit(WORK_HIGH_PRIO_BIT, &work->flags);
}
