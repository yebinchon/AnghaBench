
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct myrb_raidlevel_name_entry {int level; char const* name; } ;
typedef enum myrb_raidlevel { ____Placeholder_myrb_raidlevel } myrb_raidlevel ;


 int ARRAY_SIZE (struct myrb_raidlevel_name_entry*) ;
 struct myrb_raidlevel_name_entry* myrb_raidlevel_name_list ;

__attribute__((used)) static const char *myrb_raidlevel_name(enum myrb_raidlevel level)
{
 struct myrb_raidlevel_name_entry *entry = myrb_raidlevel_name_list;
 int i;

 for (i = 0; i < ARRAY_SIZE(myrb_raidlevel_name_list); i++) {
  if (entry[i].level == level)
   return entry[i].name;
 }
 return ((void*)0);
}
