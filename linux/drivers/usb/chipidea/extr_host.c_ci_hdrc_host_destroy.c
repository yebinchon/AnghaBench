
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ci_hdrc {scalar_t__ role; scalar_t__ hcd; } ;


 scalar_t__ CI_ROLE_HOST ;
 int host_stop (struct ci_hdrc*) ;

void ci_hdrc_host_destroy(struct ci_hdrc *ci)
{
 if (ci->role == CI_ROLE_HOST && ci->hcd)
  host_stop(ci);
}
