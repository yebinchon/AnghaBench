
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gds_vector {int dummy; } ;
struct evbuf_header {int length; } ;


 int GDS_ID_MDSMU ;
 int sclp_eval_mdsmu (struct gds_vector*) ;
 struct gds_vector* sclp_find_gds_vector (struct evbuf_header*,void*,int ) ;

__attribute__((used)) static void sclp_tty_receiver(struct evbuf_header *evbuf)
{
 struct gds_vector *v;

 v = sclp_find_gds_vector(evbuf + 1, (void *) evbuf + evbuf->length,
     GDS_ID_MDSMU);
 if (v)
  sclp_eval_mdsmu(v);
}
