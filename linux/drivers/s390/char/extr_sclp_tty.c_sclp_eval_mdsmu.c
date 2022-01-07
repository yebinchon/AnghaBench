
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gds_vector {int length; } ;


 int GDS_ID_CPMSU ;
 int sclp_eval_cpmsu (struct gds_vector*) ;
 struct gds_vector* sclp_find_gds_vector (struct gds_vector*,void*,int ) ;

__attribute__((used)) static inline void sclp_eval_mdsmu(struct gds_vector *v)
{
 v = sclp_find_gds_vector(v + 1, (void *) v + v->length, GDS_ID_CPMSU);
 if (v)
  sclp_eval_cpmsu(v);
}
