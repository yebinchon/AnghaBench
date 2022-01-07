
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef enum raid_state { ____Placeholder_raid_state } raid_state ;
struct TYPE_3__ {int value; char* name; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 TYPE_1__* raid_states ;

__attribute__((used)) static const char *raid_state_name(enum raid_state state)
{
 int i;
 char *name = ((void*)0);

 for (i = 0; i < ARRAY_SIZE(raid_states); i++) {
  if (raid_states[i].value == state) {
   name = raid_states[i].name;
   break;
  }
 }
 return name;
}
