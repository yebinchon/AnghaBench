
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct most_snd_grp {int list; } ;
struct config_item {int dummy; } ;


 int kfree (struct most_snd_grp*) ;
 int list_del (int *) ;
 struct most_snd_grp* to_most_snd_grp (struct config_item*) ;

__attribute__((used)) static void most_snd_grp_release(struct config_item *item)
{
 struct most_snd_grp *group = to_most_snd_grp(item);

 list_del(&group->list);
 kfree(group);
}
