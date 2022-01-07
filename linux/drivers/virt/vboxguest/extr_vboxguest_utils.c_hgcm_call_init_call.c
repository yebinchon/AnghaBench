
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_6__ {scalar_t__ linear_addr; } ;
struct TYPE_7__ {int size; TYPE_2__ u; } ;
struct TYPE_8__ {TYPE_3__ pointer; } ;
struct vmmdev_hgcm_function_parameter {int type; TYPE_4__ u; } ;
struct TYPE_5__ {int result; scalar_t__ flags; } ;
struct vmmdev_hgcm_call {int client_id; int function; int parm_count; TYPE_1__ header; } ;


 int VINF_SUCCESS ;
 struct vmmdev_hgcm_function_parameter* VMMDEV_HGCM_CALL_PARMS (struct vmmdev_hgcm_call*) ;


 int VMMDEV_HGCM_PARM_TYPE_INVALID ;






 int WARN_ON (int) ;
 int hgcm_call_init_linaddr (struct vmmdev_hgcm_call*,struct vmmdev_hgcm_function_parameter*,void*,int ,int,int*) ;

__attribute__((used)) static void hgcm_call_init_call(
 struct vmmdev_hgcm_call *call, u32 client_id, u32 function,
 const struct vmmdev_hgcm_function_parameter *src_parm,
 u32 parm_count, void **bounce_bufs)
{
 struct vmmdev_hgcm_function_parameter *dst_parm =
  VMMDEV_HGCM_CALL_PARMS(call);
 u32 i, off_extra = (uintptr_t)(dst_parm + parm_count) - (uintptr_t)call;
 void *buf;

 call->header.flags = 0;
 call->header.result = VINF_SUCCESS;
 call->client_id = client_id;
 call->function = function;
 call->parm_count = parm_count;

 for (i = 0; i < parm_count; i++, src_parm++, dst_parm++) {
  switch (src_parm->type) {
  case 135:
  case 134:
   *dst_parm = *src_parm;
   break;

  case 133:
  case 132:
  case 128:
   hgcm_call_init_linaddr(call, dst_parm, bounce_bufs[i],
            src_parm->u.pointer.size,
            src_parm->type, &off_extra);
   break;

  case 131:
  case 130:
  case 129:
   buf = (void *)src_parm->u.pointer.u.linear_addr;
   hgcm_call_init_linaddr(call, dst_parm, buf,
            src_parm->u.pointer.size,
            src_parm->type, &off_extra);
   break;

  default:
   WARN_ON(1);
   dst_parm->type = VMMDEV_HGCM_PARM_TYPE_INVALID;
  }
 }
}
