
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnt_private {int run_command_work; } ;


 int msecs_to_jiffies (unsigned long) ;
 int schedule_delayed_work (int *,int ) ;

__attribute__((used)) static void vnt_cmd_timer_wait(struct vnt_private *priv, unsigned long msecs)
{
 schedule_delayed_work(&priv->run_command_work, msecs_to_jiffies(msecs));
}
