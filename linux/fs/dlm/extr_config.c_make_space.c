
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct config_group {int dummy; } ;
struct dlm_space {struct config_group group; scalar_t__ members_count; int members_lock; int members; struct config_group ns_group; } ;
struct dlm_nodes {struct config_group group; scalar_t__ members_count; int members_lock; int members; struct config_group ns_group; } ;


 int ENOMEM ;
 struct config_group* ERR_PTR (int ) ;
 int GFP_NOFS ;
 int INIT_LIST_HEAD (int *) ;
 int config_group_init_type_name (struct config_group*,char const*,int *) ;
 int configfs_add_default_group (struct config_group*,struct config_group*) ;
 int kfree (struct dlm_space*) ;
 struct dlm_space* kzalloc (int,int ) ;
 int mutex_init (int *) ;
 int nodes_type ;
 int space_type ;

__attribute__((used)) static struct config_group *make_space(struct config_group *g, const char *name)
{
 struct dlm_space *sp = ((void*)0);
 struct dlm_nodes *nds = ((void*)0);

 sp = kzalloc(sizeof(struct dlm_space), GFP_NOFS);
 nds = kzalloc(sizeof(struct dlm_nodes), GFP_NOFS);

 if (!sp || !nds)
  goto fail;

 config_group_init_type_name(&sp->group, name, &space_type);

 config_group_init_type_name(&nds->ns_group, "nodes", &nodes_type);
 configfs_add_default_group(&nds->ns_group, &sp->group);

 INIT_LIST_HEAD(&sp->members);
 mutex_init(&sp->members_lock);
 sp->members_count = 0;
 return &sp->group;

 fail:
 kfree(sp);
 kfree(nds);
 return ERR_PTR(-ENOMEM);
}
