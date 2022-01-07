
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvmet_subsys {int ver; } ;
struct config_item {int dummy; } ;
typedef size_t ssize_t ;


 size_t EINVAL ;
 int NVME_VS (int,int,int) ;
 int down_write (int *) ;
 int nvmet_config_sem ;
 int sscanf (char const*,char*,int*,int*,int*) ;
 struct nvmet_subsys* to_subsys (struct config_item*) ;
 int up_write (int *) ;

__attribute__((used)) static ssize_t nvmet_subsys_attr_version_store(struct config_item *item,
            const char *page, size_t count)
{
 struct nvmet_subsys *subsys = to_subsys(item);
 int major, minor, tertiary = 0;
 int ret;


 ret = sscanf(page, "%d.%d.%d\n", &major, &minor, &tertiary);
 if (ret != 2 && ret != 3)
  return -EINVAL;

 down_write(&nvmet_config_sem);
 subsys->ver = NVME_VS(major, minor, tertiary);
 up_write(&nvmet_config_sem);

 return count;
}
