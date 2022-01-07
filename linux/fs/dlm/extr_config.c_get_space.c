
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct dlm_space {int dummy; } ;
struct config_item {int dummy; } ;
struct TYPE_5__ {TYPE_1__* cg_subsys; } ;
struct TYPE_4__ {int su_mutex; } ;


 struct config_item* config_group_find_item (TYPE_2__*,char*) ;
 struct dlm_space* config_item_to_space (struct config_item*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 TYPE_2__* space_list ;

__attribute__((used)) static struct dlm_space *get_space(char *name)
{
 struct config_item *i;

 if (!space_list)
  return ((void*)0);

 mutex_lock(&space_list->cg_subsys->su_mutex);
 i = config_group_find_item(space_list, name);
 mutex_unlock(&space_list->cg_subsys->su_mutex);

 return config_item_to_space(i);
}
