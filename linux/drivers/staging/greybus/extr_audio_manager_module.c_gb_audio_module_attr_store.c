
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kobject {int dummy; } ;
struct gb_audio_manager_module_attribute {int (* store ) (struct gb_audio_manager_module*,struct gb_audio_manager_module_attribute*,char const*,size_t) ;} ;
struct gb_audio_manager_module {int dummy; } ;
struct attribute {int dummy; } ;
typedef int ssize_t ;


 int EIO ;
 int stub1 (struct gb_audio_manager_module*,struct gb_audio_manager_module_attribute*,char const*,size_t) ;
 struct gb_audio_manager_module* to_gb_audio_module (struct kobject*) ;
 struct gb_audio_manager_module_attribute* to_gb_audio_module_attr (struct attribute*) ;

__attribute__((used)) static ssize_t gb_audio_module_attr_store(struct kobject *kobj,
       struct attribute *attr,
       const char *buf, size_t len)
{
 struct gb_audio_manager_module_attribute *attribute;
 struct gb_audio_manager_module *module;

 attribute = to_gb_audio_module_attr(attr);
 module = to_gb_audio_module(kobj);

 if (!attribute->store)
  return -EIO;

 return attribute->store(module, attribute, buf, len);
}
