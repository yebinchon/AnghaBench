
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct myrb_devstate_name_entry {int state; char const* name; } ;
typedef enum myrb_devstate { ____Placeholder_myrb_devstate } myrb_devstate ;


 int ARRAY_SIZE (struct myrb_devstate_name_entry*) ;
 struct myrb_devstate_name_entry* myrb_devstate_name_list ;

__attribute__((used)) static const char *myrb_devstate_name(enum myrb_devstate state)
{
 struct myrb_devstate_name_entry *entry = myrb_devstate_name_list;
 int i;

 for (i = 0; i < ARRAY_SIZE(myrb_devstate_name_list); i++) {
  if (entry[i].state == state)
   return entry[i].name;
 }
 return "Unknown";
}
