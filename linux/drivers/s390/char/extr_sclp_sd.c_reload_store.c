
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sclp_sd_file {int dummy; } ;
struct kobject {int dummy; } ;
struct kobj_attribute {int dummy; } ;
typedef size_t ssize_t ;


 int sclp_sd_file_update (struct sclp_sd_file*) ;
 struct sclp_sd_file* to_sd_file (struct kobject*) ;

__attribute__((used)) static ssize_t reload_store(struct kobject *kobj, struct kobj_attribute *attr,
       const char *buf, size_t count)
{
 struct sclp_sd_file *sd_file = to_sd_file(kobj);

 sclp_sd_file_update(sd_file);

 return count;
}
