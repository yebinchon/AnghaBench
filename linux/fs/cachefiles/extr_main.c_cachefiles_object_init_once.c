
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cachefiles_object {int work_lock; } ;


 int memset (struct cachefiles_object*,int ,int) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static void cachefiles_object_init_once(void *_object)
{
 struct cachefiles_object *object = _object;

 memset(object, 0, sizeof(*object));
 spin_lock_init(&object->work_lock);
}
