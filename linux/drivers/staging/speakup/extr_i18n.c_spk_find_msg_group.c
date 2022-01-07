
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msg_group_t {int name; } ;


 struct msg_group_t* all_groups ;
 int num_groups ;
 int strcmp (int ,char const*) ;

struct msg_group_t *spk_find_msg_group(const char *group_name)
{
 struct msg_group_t *group = ((void*)0);
 int i;

 for (i = 0; i < num_groups; i++) {
  if (!strcmp(all_groups[i].name, group_name)) {
   group = &all_groups[i];
   break;
  }
 }
 return group;
}
