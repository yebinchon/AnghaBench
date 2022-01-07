
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dlm_space {int members_lock; int members_count; int members; } ;
struct config_item {int dummy; } ;
struct dlm_node {int nodeid; int weight; int new; struct config_item item; int list; } ;
struct TYPE_2__ {int ci_parent; } ;
struct config_group {TYPE_1__ cg_item; } ;


 int ENOMEM ;
 struct config_item* ERR_PTR (int ) ;
 int GFP_NOFS ;
 int config_item_init_type_name (struct config_item*,char const*,int *) ;
 struct dlm_space* config_item_to_space (int ) ;
 struct dlm_node* kzalloc (int,int ) ;
 int list_add (int *,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int node_type ;

__attribute__((used)) static struct config_item *make_node(struct config_group *g, const char *name)
{
 struct dlm_space *sp = config_item_to_space(g->cg_item.ci_parent);
 struct dlm_node *nd;

 nd = kzalloc(sizeof(struct dlm_node), GFP_NOFS);
 if (!nd)
  return ERR_PTR(-ENOMEM);

 config_item_init_type_name(&nd->item, name, &node_type);
 nd->nodeid = -1;
 nd->weight = 1;
 nd->new = 1;

 mutex_lock(&sp->members_lock);
 list_add(&nd->list, &sp->members);
 sp->members_count++;
 mutex_unlock(&sp->members_lock);

 return &nd->item;
}
