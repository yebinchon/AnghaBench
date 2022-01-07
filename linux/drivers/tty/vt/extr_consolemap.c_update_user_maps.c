
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct uni_pagedir {int dummy; } ;
struct TYPE_5__ {struct uni_pagedir** vc_uni_pagedir_loc; } ;
struct TYPE_4__ {TYPE_2__* d; } ;


 int MAX_NR_CONSOLES ;
 int USER_MAP ;
 int set_inverse_trans_unicode (TYPE_2__*,struct uni_pagedir*) ;
 int set_inverse_transl (TYPE_2__*,struct uni_pagedir*,int ) ;
 TYPE_1__* vc_cons ;
 int vc_cons_allocated (int) ;

__attribute__((used)) static void update_user_maps(void)
{
 int i;
 struct uni_pagedir *p, *q = ((void*)0);

 for (i = 0; i < MAX_NR_CONSOLES; i++) {
  if (!vc_cons_allocated(i))
   continue;
  p = *vc_cons[i].d->vc_uni_pagedir_loc;
  if (p && p != q) {
   set_inverse_transl(vc_cons[i].d, p, USER_MAP);
   set_inverse_trans_unicode(vc_cons[i].d, p);
   q = p;
  }
 }
}
