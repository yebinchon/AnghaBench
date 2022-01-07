
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef enum iscsi_ipaddress_state { ____Placeholder_iscsi_ipaddress_state } iscsi_ipaddress_state ;
struct TYPE_3__ {int value; char* name; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 TYPE_1__* iscsi_ipaddress_state_names ;

char *iscsi_get_ipaddress_state_name(enum iscsi_ipaddress_state port_state)
{
 int i;
 char *state = ((void*)0);

 for (i = 0; i < ARRAY_SIZE(iscsi_ipaddress_state_names); i++) {
  if (iscsi_ipaddress_state_names[i].value == port_state) {
   state = iscsi_ipaddress_state_names[i].name;
   break;
  }
 }
 return state;
}
