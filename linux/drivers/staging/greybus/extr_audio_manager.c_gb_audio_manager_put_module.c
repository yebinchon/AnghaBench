
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gb_audio_manager_module {int kobj; } ;


 int kobject_put (int *) ;

void gb_audio_manager_put_module(struct gb_audio_manager_module *module)
{
 kobject_put(&module->kobj);
}
