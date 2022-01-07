
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kobject {int dummy; } ;
struct kobj_attribute {int dummy; } ;
typedef int ssize_t ;


 int check_string (char*,char const*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int sclp_cpi_mutex ;
 int set_string (int ,char const*) ;
 int sysplex_name ;

__attribute__((used)) static ssize_t sysplex_name_store(struct kobject *kobj,
      struct kobj_attribute *attr,
      const char *buf,
 size_t len)
{
 int rc;

 rc = check_string("sysplex_name", buf);
 if (rc)
  return rc;

 mutex_lock(&sclp_cpi_mutex);
 set_string(sysplex_name, buf);
 mutex_unlock(&sclp_cpi_mutex);

 return len;
}
