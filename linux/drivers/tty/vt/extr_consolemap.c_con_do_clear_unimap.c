
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vc_data {struct uni_pagedir** vc_uni_pagedir_loc; } ;
struct uni_pagedir {int refcount; scalar_t__ sum; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int con_release_unimap (struct uni_pagedir*) ;
 struct uni_pagedir* dflt ;
 struct uni_pagedir* kzalloc (int,int ) ;

__attribute__((used)) static int con_do_clear_unimap(struct vc_data *vc)
{
 struct uni_pagedir *p, *q;

 p = *vc->vc_uni_pagedir_loc;
 if (!p || --p->refcount) {
  q = kzalloc(sizeof(*p), GFP_KERNEL);
  if (!q) {
   if (p)
    p->refcount++;
   return -ENOMEM;
  }
  q->refcount=1;
  *vc->vc_uni_pagedir_loc = q;
 } else {
  if (p == dflt) dflt = ((void*)0);
  p->refcount++;
  p->sum = 0;
  con_release_unimap(p);
 }
 return 0;
}
