
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tb_switch {int dev; int rpm_complete; } ;


 int dev_dbg (int *,char*) ;
 int msecs_to_jiffies (int) ;
 scalar_t__ tb_route (struct tb_switch*) ;
 int wait_for_completion_timeout (int *,int ) ;

__attribute__((used)) static int icm_runtime_resume_switch(struct tb_switch *sw)
{
 if (tb_route(sw)) {
  if (!wait_for_completion_timeout(&sw->rpm_complete,
       msecs_to_jiffies(500))) {
   dev_dbg(&sw->dev, "runtime resuming timed out\n");
  }
 }
 return 0;
}
