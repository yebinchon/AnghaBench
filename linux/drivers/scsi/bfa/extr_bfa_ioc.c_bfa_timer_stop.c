
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfa_timer_s {int qe; } ;


 int WARN_ON (int ) ;
 int list_del (int *) ;
 int list_empty (int *) ;

void
bfa_timer_stop(struct bfa_timer_s *timer)
{
 WARN_ON(list_empty(&timer->qe));

 list_del(&timer->qe);
}
