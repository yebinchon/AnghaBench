
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_4__ {scalar_t__ linear_addr; } ;
struct TYPE_5__ {scalar_t__ size; TYPE_1__ u; } ;
struct TYPE_6__ {TYPE_2__ pointer; } ;
struct vmmdev_hgcm_function_parameter {int type; TYPE_3__ u; } ;


 int E2BIG ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ VBG_MAX_HGCM_KERNEL_PARM ;
 int WARN_ON (int) ;
 int hgcm_call_add_pagelist_size (void*,scalar_t__,size_t*) ;
 int hgcm_call_preprocess_linaddr (struct vmmdev_hgcm_function_parameter const*,void**,size_t*) ;
 void** kcalloc (scalar_t__,int,int ) ;

__attribute__((used)) static int hgcm_call_preprocess(
 const struct vmmdev_hgcm_function_parameter *src_parm,
 u32 parm_count, void ***bounce_bufs_ret, size_t *extra)
{
 void *buf, **bounce_bufs = ((void*)0);
 u32 i, len;
 int ret;

 for (i = 0; i < parm_count; i++, src_parm++) {
  switch (src_parm->type) {
  case 135:
  case 134:
   break;

  case 133:
  case 132:
  case 128:
   if (!bounce_bufs) {
    bounce_bufs = kcalloc(parm_count,
            sizeof(void *),
            GFP_KERNEL);
    if (!bounce_bufs)
     return -ENOMEM;

    *bounce_bufs_ret = bounce_bufs;
   }

   ret = hgcm_call_preprocess_linaddr(src_parm,
          &bounce_bufs[i],
          extra);
   if (ret)
    return ret;

   break;

  case 131:
  case 130:
  case 129:
   buf = (void *)src_parm->u.pointer.u.linear_addr;
   len = src_parm->u.pointer.size;
   if (WARN_ON(len > VBG_MAX_HGCM_KERNEL_PARM))
    return -E2BIG;

   hgcm_call_add_pagelist_size(buf, len, extra);
   break;

  default:
   return -EINVAL;
  }
 }

 return 0;
}
