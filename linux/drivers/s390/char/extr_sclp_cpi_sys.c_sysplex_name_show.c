
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
 int snprintf (char*,int ,char*,char*) ;
 char* sysplex_name ;

__attribute__((used)) static ssize_t sysplex_name_show(struct kobject *kobj,
     struct kobj_attribute *attr, char *page)
{
 int rc;

 mutex_lock(&sclp_cpi_mutex);
 rc = snprintf(page, PAGE_SIZE, "%s\n", sysplex_name);
 mutex_unlock(&sclp_cpi_mutex);
 return rc;
}
