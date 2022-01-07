
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kobject {int dummy; } ;
struct gb_audio_manager_module {int id; } ;


 int kfree (struct gb_audio_manager_module*) ;
 int pr_info (char*,int ) ;
 struct gb_audio_manager_module* to_gb_audio_module (struct kobject*) ;

__attribute__((used)) static void gb_audio_module_release(struct kobject *kobj)
{
 struct gb_audio_manager_module *module = to_gb_audio_module(kobj);

 pr_info("Destroying audio module #%d\n", module->id);

 kfree(module);
}
