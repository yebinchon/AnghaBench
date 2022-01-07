
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int value; char* name; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 TYPE_1__* iscsi_session_state_names ;

__attribute__((used)) static const char *iscsi_session_state_name(int state)
{
 int i;
 char *name = ((void*)0);

 for (i = 0; i < ARRAY_SIZE(iscsi_session_state_names); i++) {
  if (iscsi_session_state_names[i].value == state) {
   name = iscsi_session_state_names[i].name;
   break;
  }
 }
 return name;
}
