
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct timer_list {int dummy; } ;
struct TYPE_2__ {scalar_t__ expires; } ;
struct most_dev {TYPE_1__ link_stat_timer; int poll_work_obj; } ;


 int HZ ;
 int add_timer (TYPE_1__*) ;
 struct most_dev* from_timer (int ,struct timer_list*,int ) ;
 scalar_t__ jiffies ;
 int link_stat_timer ;
 struct most_dev* mdev ;
 int schedule_work (int *) ;

__attribute__((used)) static void link_stat_timer_handler(struct timer_list *t)
{
 struct most_dev *mdev = from_timer(mdev, t, link_stat_timer);

 schedule_work(&mdev->poll_work_obj);
 mdev->link_stat_timer.expires = jiffies + (2 * HZ);
 add_timer(&mdev->link_stat_timer);
}
