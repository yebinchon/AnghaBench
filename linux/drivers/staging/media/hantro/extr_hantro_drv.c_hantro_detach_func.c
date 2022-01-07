
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int entity; } ;
struct hantro_func {TYPE_1__ vdev; int proc; int sink; int intf_devnode; } ;


 int media_device_unregister_entity (int *) ;
 int media_devnode_remove (int ) ;
 int media_entity_remove_links (int *) ;

__attribute__((used)) static void hantro_detach_func(struct hantro_func *func)
{
 media_devnode_remove(func->intf_devnode);
 media_entity_remove_links(&func->sink);
 media_entity_remove_links(&func->proc);
 media_entity_remove_links(&func->vdev.entity);
 media_device_unregister_entity(&func->sink);
 media_device_unregister_entity(&func->proc);
 media_device_unregister_entity(&func->vdev.entity);
}
