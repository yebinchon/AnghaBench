
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pp_ctx {int dummy; } ;
struct hrtimer {int dummy; } ;
typedef enum hrtimer_restart { ____Placeholder_hrtimer_restart } hrtimer_restart ;


 int HRTIMER_NORESTART ;
 int pp_ping (struct pp_ctx*) ;
 struct pp_ctx* to_pp_timer (struct hrtimer*) ;

__attribute__((used)) static enum hrtimer_restart pp_timer_func(struct hrtimer *t)
{
 struct pp_ctx *pp = to_pp_timer(t);

 pp_ping(pp);

 return HRTIMER_NORESTART;
}
