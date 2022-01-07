
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct config_item {int dummy; } ;
struct mdev_link {struct config_item item; int name; int comp; } ;
struct TYPE_2__ {int ci_namebuf; } ;
struct config_group {TYPE_1__ cg_item; } ;


 int ENOMEM ;
 struct config_item* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 int config_item_init_type_name (struct config_item*,char const*,int *) ;
 struct mdev_link* kzalloc (int,int ) ;
 int mdev_link_type ;
 int strcmp (int ,char*) ;
 int strcpy (int ,char const*) ;

__attribute__((used)) static struct config_item *most_common_make_item(struct config_group *group,
       const char *name)
{
 struct mdev_link *mdev_link;

 mdev_link = kzalloc(sizeof(*mdev_link), GFP_KERNEL);
 if (!mdev_link)
  return ERR_PTR(-ENOMEM);

 config_item_init_type_name(&mdev_link->item, name,
       &mdev_link_type);

 if (!strcmp(group->cg_item.ci_namebuf, "most_cdev"))
  strcpy(mdev_link->comp, "cdev");
 else if (!strcmp(group->cg_item.ci_namebuf, "most_net"))
  strcpy(mdev_link->comp, "net");
 else if (!strcmp(group->cg_item.ci_namebuf, "most_video"))
  strcpy(mdev_link->comp, "video");
 strcpy(mdev_link->name, name);
 return &mdev_link->item;
}
