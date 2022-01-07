
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct config_item {int dummy; } ;
struct mdev_link {struct config_item item; int comp; int name; scalar_t__ create_link; } ;
struct config_group {int dummy; } ;


 int ENOMEM ;
 struct config_item* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 int config_item_init_type_name (struct config_item*,char const*,int *) ;
 struct mdev_link* kzalloc (int,int ) ;
 int mdev_link_type ;
 int strcpy (int ,char const*) ;

__attribute__((used)) static struct config_item *most_snd_grp_make_item(struct config_group *group,
        const char *name)
{
 struct mdev_link *mdev_link;

 mdev_link = kzalloc(sizeof(*mdev_link), GFP_KERNEL);
 if (!mdev_link)
  return ERR_PTR(-ENOMEM);

 config_item_init_type_name(&mdev_link->item, name, &mdev_link_type);
 mdev_link->create_link = 0;
 strcpy(mdev_link->name, name);
 strcpy(mdev_link->comp, "sound");
 return &mdev_link->item;
}
