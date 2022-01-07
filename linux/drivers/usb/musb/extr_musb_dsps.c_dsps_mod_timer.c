
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct musb {int dev_timer; } ;
struct dsps_glue {TYPE_1__* wrp; int musb; } ;
struct TYPE_2__ {int poll_timeout; } ;


 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 int msecs_to_jiffies (int) ;
 struct musb* platform_get_drvdata (int ) ;

__attribute__((used)) static void dsps_mod_timer(struct dsps_glue *glue, int wait_ms)
{
 struct musb *musb = platform_get_drvdata(glue->musb);
 int wait;

 if (wait_ms < 0)
  wait = msecs_to_jiffies(glue->wrp->poll_timeout);
 else
  wait = msecs_to_jiffies(wait_ms);

 mod_timer(&musb->dev_timer, jiffies + wait);
}
