
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct vc_data {struct uni_pagedir** vc_uni_pagedir_loc; } ;
struct uni_pagedir {int refcount; } ;


 int con_do_clear_unimap (struct vc_data*) ;
 int con_insert_unipair (struct uni_pagedir*,int ,int) ;
 int con_release_unimap (struct uni_pagedir*) ;
 scalar_t__ con_unify_unimap (struct vc_data*,struct uni_pagedir*) ;
 struct uni_pagedir* dflt ;
 int* dfont_unicount ;
 int * dfont_unitable ;
 int kfree (struct uni_pagedir*) ;
 int set_inverse_trans_unicode (struct vc_data*,struct uni_pagedir*) ;
 int set_inverse_transl (struct vc_data*,struct uni_pagedir*,int) ;

int con_set_default_unimap(struct vc_data *vc)
{
 int i, j, err = 0, err1;
 u16 *q;
 struct uni_pagedir *p;

 if (dflt) {
  p = *vc->vc_uni_pagedir_loc;
  if (p == dflt)
   return 0;

  dflt->refcount++;
  *vc->vc_uni_pagedir_loc = dflt;
  if (p && !--p->refcount) {
   con_release_unimap(p);
   kfree(p);
  }
  return 0;
 }



 err = con_do_clear_unimap(vc);
 if (err)
  return err;

 p = *vc->vc_uni_pagedir_loc;
 q = dfont_unitable;

 for (i = 0; i < 256; i++)
  for (j = dfont_unicount[i]; j; j--) {
   err1 = con_insert_unipair(p, *(q++), i);
   if (err1)
    err = err1;
  }

 if (con_unify_unimap(vc, p)) {
  dflt = *vc->vc_uni_pagedir_loc;
  return err;
 }

 for (i = 0; i <= 3; i++)
  set_inverse_transl(vc, p, i);
 set_inverse_trans_unicode(vc, p);
 dflt = p;
 return err;
}
