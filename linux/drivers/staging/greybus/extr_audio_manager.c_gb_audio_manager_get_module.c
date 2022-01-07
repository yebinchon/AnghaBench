
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gb_audio_manager_module {int kobj; } ;


 int down_read (int *) ;
 struct gb_audio_manager_module* gb_audio_manager_get_locked (int) ;
 int kobject_get (int *) ;
 int modules_rwsem ;
 int up_read (int *) ;

struct gb_audio_manager_module *gb_audio_manager_get_module(int id)
{
 struct gb_audio_manager_module *module;

 down_read(&modules_rwsem);
 module = gb_audio_manager_get_locked(id);
 kobject_get(&module->kobj);
 up_read(&modules_rwsem);
 return module;
}
