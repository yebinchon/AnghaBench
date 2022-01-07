
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gds_vector {int length; } ;
struct gds_subvector {int length; scalar_t__ key; } ;


 scalar_t__ GDS_KEY_SELFDEFTEXTMSG ;
 int sclp_eval_selfdeftextmsg (struct gds_subvector*) ;

__attribute__((used)) static inline void sclp_eval_textcmd(struct gds_vector *v)
{
 struct gds_subvector *sv;
 void *end;

 end = (void *) v + v->length;
 for (sv = (struct gds_subvector *) (v + 1);
      (void *) sv < end; sv = (void *) sv + sv->length)
  if (sv->key == GDS_KEY_SELFDEFTEXTMSG)
   sclp_eval_selfdeftextmsg(sv);

}
