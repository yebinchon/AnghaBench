
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ shm; } ;
struct TYPE_3__ {TYPE_2__ memref; } ;
struct tee_param {scalar_t__ attr; TYPE_1__ u; } ;


 int EINVAL ;
 scalar_t__ TEE_IOCTL_PARAM_ATTR_META ;
 scalar_t__ tee_param_is_memref (struct tee_param*) ;
 int tee_shm_put (scalar_t__) ;

__attribute__((used)) static int supp_check_recv_params(size_t num_params, struct tee_param *params,
      size_t *num_meta)
{
 size_t n;

 if (!num_params)
  return -EINVAL;





 for (n = 0; n < num_params; n++)
  if (tee_param_is_memref(params + n) && params[n].u.memref.shm)
   tee_shm_put(params[n].u.memref.shm);





 for (n = 0; n < num_params; n++)
  if (params[n].attr &&
      params[n].attr != TEE_IOCTL_PARAM_ATTR_META)
   return -EINVAL;


 if (params->attr == TEE_IOCTL_PARAM_ATTR_META)
  *num_meta = 1;
 else
  *num_meta = 0;

 return 0;
}
