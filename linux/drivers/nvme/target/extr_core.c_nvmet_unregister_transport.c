
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvmet_fabrics_ops {size_t type; } ;


 int down_write (int *) ;
 int nvmet_config_sem ;
 int ** nvmet_transports ;
 int up_write (int *) ;

void nvmet_unregister_transport(const struct nvmet_fabrics_ops *ops)
{
 down_write(&nvmet_config_sem);
 nvmet_transports[ops->type] = ((void*)0);
 up_write(&nvmet_config_sem);
}
