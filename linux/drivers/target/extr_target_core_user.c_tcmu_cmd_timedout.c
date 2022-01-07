
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_list {int dummy; } ;
struct tcmu_dev {int name; } ;


 int cmd_timer ;
 struct tcmu_dev* from_timer (int ,struct timer_list*,int ) ;
 int pr_debug (char*,int ) ;
 int tcmu_device_timedout (struct tcmu_dev*) ;
 struct tcmu_dev* udev ;

__attribute__((used)) static void tcmu_cmd_timedout(struct timer_list *t)
{
 struct tcmu_dev *udev = from_timer(udev, t, cmd_timer);

 pr_debug("%s cmd timeout has expired\n", udev->name);
 tcmu_device_timedout(udev);
}
