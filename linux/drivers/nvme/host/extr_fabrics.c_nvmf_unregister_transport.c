
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvmf_transport_ops {int entry; } ;


 int down_write (int *) ;
 int list_del (int *) ;
 int nvmf_transports_rwsem ;
 int up_write (int *) ;

void nvmf_unregister_transport(struct nvmf_transport_ops *ops)
{
 down_write(&nvmf_transports_rwsem);
 list_del(&ops->entry);
 up_write(&nvmf_transports_rwsem);
}
