
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int comptag; } ;
union rio_pw_msg {TYPE_1__ em; } ;
struct rio_pw_filter {int mask; int low; int high; } ;



__attribute__((used)) static int rio_mport_match_pw(union rio_pw_msg *msg,
         struct rio_pw_filter *filter)
{
 if ((msg->em.comptag & filter->mask) < filter->low ||
  (msg->em.comptag & filter->mask) > filter->high)
  return 0;
 return 1;
}
