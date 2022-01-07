
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvmf_transport_ops {int entry; int create_ctrl; } ;


 int EINVAL ;
 int down_write (int *) ;
 int list_add_tail (int *,int *) ;
 int nvmf_transports ;
 int nvmf_transports_rwsem ;
 int up_write (int *) ;

int nvmf_register_transport(struct nvmf_transport_ops *ops)
{
 if (!ops->create_ctrl)
  return -EINVAL;

 down_write(&nvmf_transports_rwsem);
 list_add_tail(&ops->entry, &nvmf_transports);
 up_write(&nvmf_transports_rwsem);

 return 0;
}
