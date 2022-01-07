
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_list {int dummy; } ;


 int sclp_vt220_emit_current () ;

__attribute__((used)) static void
sclp_vt220_timeout(struct timer_list *unused)
{
 sclp_vt220_emit_current();
}
