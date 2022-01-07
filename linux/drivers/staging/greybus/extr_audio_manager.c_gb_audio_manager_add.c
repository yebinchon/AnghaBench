
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gb_audio_manager_module_descriptor {int dummy; } ;
struct gb_audio_manager_module {int id; int list; } ;


 int GFP_KERNEL ;
 int down_write (int *) ;
 int gb_audio_manager_module_create (struct gb_audio_manager_module**,int ,int,struct gb_audio_manager_module_descriptor*) ;
 int ida_simple_get (int *,int ,int ,int ) ;
 int ida_simple_remove (int *,int) ;
 int list_add_tail (int *,int *) ;
 int manager_kset ;
 int module_id ;
 int modules_list ;
 int modules_rwsem ;
 int up_write (int *) ;

int gb_audio_manager_add(struct gb_audio_manager_module_descriptor *desc)
{
 struct gb_audio_manager_module *module;
 int id;
 int err;

 id = ida_simple_get(&module_id, 0, 0, GFP_KERNEL);
 if (id < 0)
  return id;

 err = gb_audio_manager_module_create(&module, manager_kset,
          id, desc);
 if (err) {
  ida_simple_remove(&module_id, id);
  return err;
 }


 down_write(&modules_rwsem);
 list_add_tail(&module->list, &modules_list);
 up_write(&modules_rwsem);

 return module->id;
}
