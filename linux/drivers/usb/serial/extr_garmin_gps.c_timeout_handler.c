
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_list {int dummy; } ;
struct garmin_data {scalar_t__ mode; int flags; } ;


 int FLAGS_QUEUING ;
 scalar_t__ MODE_NATIVE ;
 struct garmin_data* from_timer (int ,struct timer_list*,int ) ;
 struct garmin_data* garmin_data_p ;
 int garmin_flush_queue (struct garmin_data*) ;
 int timer ;

__attribute__((used)) static void timeout_handler(struct timer_list *t)
{
 struct garmin_data *garmin_data_p = from_timer(garmin_data_p, t, timer);


 if (garmin_data_p->mode == MODE_NATIVE)
  if (garmin_data_p->flags & FLAGS_QUEUING)
   garmin_flush_queue(garmin_data_p);
}
