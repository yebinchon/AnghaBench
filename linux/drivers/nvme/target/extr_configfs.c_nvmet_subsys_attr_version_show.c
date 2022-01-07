
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvmet_subsys {int ver; } ;
struct config_item {int dummy; } ;
typedef int ssize_t ;


 scalar_t__ NVME_MAJOR (int ) ;
 scalar_t__ NVME_MINOR (int ) ;
 scalar_t__ NVME_TERTIARY (int ) ;
 int PAGE_SIZE ;
 int snprintf (char*,int ,char*,int,int,...) ;
 struct nvmet_subsys* to_subsys (struct config_item*) ;

__attribute__((used)) static ssize_t nvmet_subsys_attr_version_show(struct config_item *item,
           char *page)
{
 struct nvmet_subsys *subsys = to_subsys(item);

 if (NVME_TERTIARY(subsys->ver))
  return snprintf(page, PAGE_SIZE, "%d.%d.%d\n",
    (int)NVME_MAJOR(subsys->ver),
    (int)NVME_MINOR(subsys->ver),
    (int)NVME_TERTIARY(subsys->ver));
 else
  return snprintf(page, PAGE_SIZE, "%d.%d\n",
    (int)NVME_MAJOR(subsys->ver),
    (int)NVME_MINOR(subsys->ver));
}
