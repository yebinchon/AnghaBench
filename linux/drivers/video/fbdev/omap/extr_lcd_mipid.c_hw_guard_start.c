
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mipid_device {scalar_t__ hw_guard_wait; scalar_t__ hw_guard_end; } ;


 scalar_t__ jiffies ;
 scalar_t__ msecs_to_jiffies (int) ;

__attribute__((used)) static void hw_guard_start(struct mipid_device *md, int guard_msec)
{
 md->hw_guard_wait = msecs_to_jiffies(guard_msec);
 md->hw_guard_end = jiffies + md->hw_guard_wait;
}
