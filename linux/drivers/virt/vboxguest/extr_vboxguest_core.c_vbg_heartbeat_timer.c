
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vbg_dev {int heartbeat_interval_ms; int heartbeat_timer; int guest_heartbeat_req; } ;
struct timer_list {int dummy; } ;


 struct vbg_dev* from_timer (int ,struct timer_list*,int ) ;
 struct vbg_dev* gdev ;
 int heartbeat_timer ;
 int mod_timer (int *,int ) ;
 int msecs_to_jiffies (int ) ;
 int vbg_req_perform (struct vbg_dev*,int ) ;

__attribute__((used)) static void vbg_heartbeat_timer(struct timer_list *t)
{
 struct vbg_dev *gdev = from_timer(gdev, t, heartbeat_timer);

 vbg_req_perform(gdev, gdev->guest_heartbeat_req);
 mod_timer(&gdev->heartbeat_timer,
    msecs_to_jiffies(gdev->heartbeat_interval_ms));
}
