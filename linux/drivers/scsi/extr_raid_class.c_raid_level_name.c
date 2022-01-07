
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef enum raid_level { ____Placeholder_raid_level } raid_level ;
struct TYPE_3__ {int value; char* name; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 TYPE_1__* raid_levels ;

__attribute__((used)) static const char *raid_level_name(enum raid_level level)
{
 int i;
 char *name = ((void*)0);

 for (i = 0; i < ARRAY_SIZE(raid_levels); i++) {
  if (raid_levels[i].value == level) {
   name = raid_levels[i].name;
   break;
  }
 }
 return name;
}
