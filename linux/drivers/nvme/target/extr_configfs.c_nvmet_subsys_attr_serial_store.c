
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvmet_subsys {int serial; } ;
struct config_item {int dummy; } ;
typedef size_t ssize_t ;


 int down_write (int *) ;
 int nvmet_config_sem ;
 int sscanf (char const*,char*,int *) ;
 struct nvmet_subsys* to_subsys (struct config_item*) ;
 int up_write (int *) ;

__attribute__((used)) static ssize_t nvmet_subsys_attr_serial_store(struct config_item *item,
           const char *page, size_t count)
{
 struct nvmet_subsys *subsys = to_subsys(item);

 down_write(&nvmet_config_sem);
 sscanf(page, "%llx\n", &subsys->serial);
 up_write(&nvmet_config_sem);

 return count;
}
