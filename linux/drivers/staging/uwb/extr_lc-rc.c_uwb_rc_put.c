
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uwb_rc {int dummy; } ;


 int __uwb_rc_put (struct uwb_rc*) ;

void uwb_rc_put(struct uwb_rc *rc)
{
 __uwb_rc_put(rc);
}
