
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int shm_offs; int size; scalar_t__ shm; } ;
struct TYPE_6__ {TYPE_1__ memref; } ;
struct tee_param {TYPE_2__ u; scalar_t__ attr; } ;
struct TYPE_7__ {unsigned long shm_ref; int offs; int size; } ;
struct TYPE_8__ {TYPE_3__ rmem; } ;
struct optee_msg_param {TYPE_4__ u; scalar_t__ attr; } ;


 scalar_t__ OPTEE_MSG_ATTR_TYPE_RMEM_INPUT ;
 scalar_t__ TEE_IOCTL_PARAM_ATTR_TYPE_MEMREF_INPUT ;

__attribute__((used)) static int to_msg_param_reg_mem(struct optee_msg_param *mp,
    const struct tee_param *p)
{
 mp->attr = OPTEE_MSG_ATTR_TYPE_RMEM_INPUT + p->attr -
     TEE_IOCTL_PARAM_ATTR_TYPE_MEMREF_INPUT;

 mp->u.rmem.shm_ref = (unsigned long)p->u.memref.shm;
 mp->u.rmem.size = p->u.memref.size;
 mp->u.rmem.offs = p->u.memref.shm_offs;
 return 0;
}
