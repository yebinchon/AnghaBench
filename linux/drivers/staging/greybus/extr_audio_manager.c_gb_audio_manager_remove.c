
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gb_audio_manager_module {int kobj; int list; } ;


 int EINVAL ;
 int down_write (int *) ;
 struct gb_audio_manager_module* gb_audio_manager_get_locked (int) ;
 int ida_simple_remove (int *,int) ;
 int kobject_put (int *) ;
 int list_del (int *) ;
 int module_id ;
 int modules_rwsem ;
 int up_write (int *) ;

int gb_audio_manager_remove(int id)
{
 struct gb_audio_manager_module *module;

 down_write(&modules_rwsem);

 module = gb_audio_manager_get_locked(id);
 if (!module) {
  up_write(&modules_rwsem);
  return -EINVAL;
 }
 list_del(&module->list);
 kobject_put(&module->kobj);
 up_write(&modules_rwsem);
 ida_simple_remove(&module_id, id);
 return 0;
}
