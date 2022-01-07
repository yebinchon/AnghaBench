
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vc_data {struct uni_pagedir** vc_uni_pagedir_loc; } ;
struct uni_pagedir {int refcount; } ;


 int EINVAL ;
 int con_free_unimap (struct vc_data*) ;

int con_copy_unimap(struct vc_data *dst_vc, struct vc_data *src_vc)
{
 struct uni_pagedir *q;

 if (!*src_vc->vc_uni_pagedir_loc)
  return -EINVAL;
 if (*dst_vc->vc_uni_pagedir_loc == *src_vc->vc_uni_pagedir_loc)
  return 0;
 con_free_unimap(dst_vc);
 q = *src_vc->vc_uni_pagedir_loc;
 q->refcount++;
 *dst_vc->vc_uni_pagedir_loc = q;
 return 0;
}
