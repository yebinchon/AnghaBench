
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kobject {int dummy; } ;
struct kobj_attribute {int dummy; } ;
typedef int ssize_t ;


 int EINVAL ;
 int gb_audio_manager_dump_all () ;
 int gb_audio_manager_dump_module (int) ;
 int kstrtoint (char const*,int,int*) ;
 int strncmp (char*,char const*,int) ;

__attribute__((used)) static ssize_t manager_sysfs_dump_store(struct kobject *kobj,
     struct kobj_attribute *attr,
     const char *buf, size_t count)
{
 int id;

 int num = kstrtoint(buf, 10, &id);

 if (num == 1) {
  num = gb_audio_manager_dump_module(id);
  if (num)
   return num;
 } else if (!strncmp("all", buf, 3)) {
  gb_audio_manager_dump_all();
 } else {
  return -EINVAL;
 }

 return count;
}
