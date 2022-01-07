
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct property {int value; int name; } ;
struct of_reconfig_data {struct property* old_prop; struct property* prop; int dn; } ;




 int OF_RECONFIG_CHANGE_ADD ;
 int OF_RECONFIG_CHANGE_REMOVE ;

 int OF_RECONFIG_NO_CHANGE ;


 struct property* of_find_property (int ,char*,int *) ;
 int strcmp (int ,char*) ;

int of_reconfig_get_state_change(unsigned long action, struct of_reconfig_data *pr)
{
 struct property *prop, *old_prop = ((void*)0);
 int is_status, status_state, old_status_state, prev_state, new_state;


 switch (action) {
 case 131:
 case 130:
  prop = of_find_property(pr->dn, "status", ((void*)0));
  break;
 case 132:
 case 129:
  prop = pr->prop;
  break;
 case 128:
  prop = pr->prop;
  old_prop = pr->old_prop;
  break;
 default:
  return OF_RECONFIG_NO_CHANGE;
 }

 is_status = 0;
 status_state = -1;
 old_status_state = -1;
 prev_state = -1;
 new_state = -1;

 if (prop && !strcmp(prop->name, "status")) {
  is_status = 1;
  status_state = !strcmp(prop->value, "okay") ||
          !strcmp(prop->value, "ok");
  if (old_prop)
   old_status_state = !strcmp(old_prop->value, "okay") ||
        !strcmp(old_prop->value, "ok");
 }

 switch (action) {
 case 131:
  prev_state = 0;

  new_state = status_state != 0;
  break;
 case 130:

  prev_state = status_state != 0;
  new_state = 0;
  break;
 case 132:
  if (is_status) {

   prev_state = 1;
   new_state = status_state;
  }
  break;
 case 129:
  if (is_status) {
   prev_state = status_state;

   new_state = 1;
  }
  break;
 case 128:
  if (is_status) {
   prev_state = old_status_state != 0;
   new_state = status_state != 0;
  }
  break;
 }

 if (prev_state == new_state)
  return OF_RECONFIG_NO_CHANGE;

 return new_state ? OF_RECONFIG_CHANGE_ADD : OF_RECONFIG_CHANGE_REMOVE;
}
