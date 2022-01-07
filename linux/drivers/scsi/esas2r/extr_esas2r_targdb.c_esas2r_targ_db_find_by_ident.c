
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct esas2r_target {scalar_t__ identifier_len; int * identifier; } ;
struct esas2r_adapter {struct esas2r_target* targetdb_end; struct esas2r_target* targetdb; } ;


 scalar_t__ memcmp (int *,void*,scalar_t__) ;

struct esas2r_target *esas2r_targ_db_find_by_ident(struct esas2r_adapter *a,
         void *identifier,
         u8 ident_len)
{
 struct esas2r_target *t;

 for (t = a->targetdb; t < a->targetdb_end; t++) {
  if (ident_len == t->identifier_len
      && memcmp(&t->identifier[0], identifier,
         ident_len) == 0)
   return t;
 }

 return ((void*)0);
}
