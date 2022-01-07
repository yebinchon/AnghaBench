
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gb_audio_manager_module {int dummy; } ;


 int EINVAL ;
 int down_read (int *) ;
 struct gb_audio_manager_module* gb_audio_manager_get_locked (int) ;
 int gb_audio_manager_module_dump (struct gb_audio_manager_module*) ;
 int modules_rwsem ;
 int up_read (int *) ;

int gb_audio_manager_dump_module(int id)
{
 struct gb_audio_manager_module *module;

 down_read(&modules_rwsem);
 module = gb_audio_manager_get_locked(id);
 up_read(&modules_rwsem);

 if (!module)
  return -EINVAL;

 gb_audio_manager_module_dump(module);
 return 0;
}
