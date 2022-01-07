
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvmet_subsys {int serial; } ;
struct config_item {int dummy; } ;
typedef int ssize_t ;


 int PAGE_SIZE ;
 int snprintf (char*,int ,char*,int ) ;
 struct nvmet_subsys* to_subsys (struct config_item*) ;

__attribute__((used)) static ssize_t nvmet_subsys_attr_serial_show(struct config_item *item,
          char *page)
{
 struct nvmet_subsys *subsys = to_subsys(item);

 return snprintf(page, PAGE_SIZE, "%llx\n", subsys->serial);
}
