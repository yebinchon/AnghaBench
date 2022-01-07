
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_list {int dummy; } ;


 int sclp_request_timeout (int) ;

__attribute__((used)) static void sclp_request_timeout_normal(struct timer_list *unused)
{
 sclp_request_timeout(0);
}
