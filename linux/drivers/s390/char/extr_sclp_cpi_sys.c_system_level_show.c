
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kobject {int dummy; } ;
struct kobj_attribute {int dummy; } ;
typedef int ssize_t ;


 int PAGE_SIZE ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int sclp_cpi_mutex ;
 int snprintf (char*,int ,char*,unsigned long long) ;
 unsigned long long system_level ;

__attribute__((used)) static ssize_t system_level_show(struct kobject *kobj,
     struct kobj_attribute *attr, char *page)
{
 unsigned long long level;

 mutex_lock(&sclp_cpi_mutex);
 level = system_level;
 mutex_unlock(&sclp_cpi_mutex);
 return snprintf(page, PAGE_SIZE, "%#018llx\n", level);
}
