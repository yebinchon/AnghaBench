
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct myrs_devstate_name_entry {int state; char* name; } ;
typedef enum myrs_devstate { ____Placeholder_myrs_devstate } myrs_devstate ;


 int ARRAY_SIZE (struct myrs_devstate_name_entry*) ;
 struct myrs_devstate_name_entry* myrs_devstate_name_list ;

__attribute__((used)) static char *myrs_devstate_name(enum myrs_devstate state)
{
 struct myrs_devstate_name_entry *entry = myrs_devstate_name_list;
 int i;

 for (i = 0; i < ARRAY_SIZE(myrs_devstate_name_list); i++) {
  if (entry[i].state == state)
   return entry[i].name;
 }
 return ((void*)0);
}
