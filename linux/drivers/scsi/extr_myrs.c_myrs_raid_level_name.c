
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct myrs_raid_level_name_entry {int level; char* name; } ;
typedef enum myrs_raid_level { ____Placeholder_myrs_raid_level } myrs_raid_level ;


 int ARRAY_SIZE (struct myrs_raid_level_name_entry*) ;
 struct myrs_raid_level_name_entry* myrs_raid_level_name_list ;

__attribute__((used)) static char *myrs_raid_level_name(enum myrs_raid_level level)
{
 struct myrs_raid_level_name_entry *entry = myrs_raid_level_name_list;
 int i;

 for (i = 0; i < ARRAY_SIZE(myrs_raid_level_name_list); i++) {
  if (entry[i].level == level)
   return entry[i].name;
 }
 return ((void*)0);
}
