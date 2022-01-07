
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum fip_state { ____Placeholder_fip_state } fip_state ;


 int ARRAY_SIZE (char**) ;
 char** fcoe_ctlr_states ;

__attribute__((used)) static const char *fcoe_ctlr_state(enum fip_state state)
{
 const char *cp = "unknown";

 if (state < ARRAY_SIZE(fcoe_ctlr_states))
  cp = fcoe_ctlr_states[state];
 if (!cp)
  cp = "unknown";
 return cp;
}
