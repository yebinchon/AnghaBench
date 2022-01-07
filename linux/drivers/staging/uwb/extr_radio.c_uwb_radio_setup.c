
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uwb_rc {int dummy; } ;


 int uwb_rc_reset (struct uwb_rc*) ;

int uwb_radio_setup(struct uwb_rc *rc)
{
 return uwb_rc_reset(rc);
}
