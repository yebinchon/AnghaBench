
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvmet_subsys {int dummy; } ;
struct config_item {int dummy; } ;


 int nvmet_subsys_del_ctrls (struct nvmet_subsys*) ;
 int nvmet_subsys_put (struct nvmet_subsys*) ;
 struct nvmet_subsys* to_subsys (struct config_item*) ;

__attribute__((used)) static void nvmet_subsys_release(struct config_item *item)
{
 struct nvmet_subsys *subsys = to_subsys(item);

 nvmet_subsys_del_ctrls(subsys);
 nvmet_subsys_put(subsys);
}
