
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvmet_fabrics_ops {size_t type; } ;


 int EINVAL ;
 int down_write (int *) ;
 int nvmet_config_sem ;
 struct nvmet_fabrics_ops const** nvmet_transports ;
 int up_write (int *) ;

int nvmet_register_transport(const struct nvmet_fabrics_ops *ops)
{
 int ret = 0;

 down_write(&nvmet_config_sem);
 if (nvmet_transports[ops->type])
  ret = -EINVAL;
 else
  nvmet_transports[ops->type] = ops;
 up_write(&nvmet_config_sem);

 return ret;
}
