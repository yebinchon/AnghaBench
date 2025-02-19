
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int shm_offs; scalar_t__ shm; int size; } ;
struct TYPE_6__ {TYPE_1__ memref; } ;
struct tee_param {int attr; TYPE_2__ u; } ;
struct TYPE_7__ {unsigned long shm_ref; int buf_ptr; int size; } ;
struct TYPE_8__ {TYPE_3__ tmem; } ;
struct optee_msg_param {int attr; TYPE_4__ u; } ;
typedef int phys_addr_t ;


 int OPTEE_MSG_ATTR_CACHE_PREDEFINED ;
 int OPTEE_MSG_ATTR_CACHE_SHIFT ;
 int OPTEE_MSG_ATTR_TYPE_TMEM_INPUT ;
 int TEE_IOCTL_PARAM_ATTR_TYPE_MEMREF_INPUT ;
 int tee_shm_get_pa (scalar_t__,int ,int *) ;

__attribute__((used)) static int to_msg_param_tmp_mem(struct optee_msg_param *mp,
    const struct tee_param *p)
{
 int rc;
 phys_addr_t pa;

 mp->attr = OPTEE_MSG_ATTR_TYPE_TMEM_INPUT + p->attr -
     TEE_IOCTL_PARAM_ATTR_TYPE_MEMREF_INPUT;

 mp->u.tmem.shm_ref = (unsigned long)p->u.memref.shm;
 mp->u.tmem.size = p->u.memref.size;

 if (!p->u.memref.shm) {
  mp->u.tmem.buf_ptr = 0;
  return 0;
 }

 rc = tee_shm_get_pa(p->u.memref.shm, p->u.memref.shm_offs, &pa);
 if (rc)
  return rc;

 mp->u.tmem.buf_ptr = pa;
 mp->attr |= OPTEE_MSG_ATTR_CACHE_PREDEFINED <<
      OPTEE_MSG_ATTR_CACHE_SHIFT;

 return 0;
}
