
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_driver {int dummy; } ;
typedef int ssize_t ;


 int ccwgroup_create_dev (int ,int *,int,char const*) ;
 int lcs_group_driver ;
 int lcs_root_dev ;

__attribute__((used)) static ssize_t group_store(struct device_driver *ddrv, const char *buf,
      size_t count)
{
 int err;
 err = ccwgroup_create_dev(lcs_root_dev, &lcs_group_driver, 2, buf);
 return err ? err : count;
}
