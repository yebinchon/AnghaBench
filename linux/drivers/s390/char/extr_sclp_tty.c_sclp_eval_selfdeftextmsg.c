
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gds_subvector {int length; int key; } ;


 int sclp_get_input (struct gds_subvector*) ;

__attribute__((used)) static inline void sclp_eval_selfdeftextmsg(struct gds_subvector *sv)
{
 void *end;

 end = (void *) sv + sv->length;
 for (sv = sv + 1; (void *) sv < end; sv = (void *) sv + sv->length)
  if (sv->key == 0x30)
   sclp_get_input(sv);
}
