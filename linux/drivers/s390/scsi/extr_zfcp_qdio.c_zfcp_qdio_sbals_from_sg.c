
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zfcp_qdio_req {int sbal_number; int sbal_first; int sbtype; } ;
struct zfcp_qdio {int req_q; int req_q_full; } ;
struct scatterlist {int length; } ;
struct qdio_buffer_element {int length; int addr; int sflags; } ;


 int EINVAL ;
 int atomic_inc (int *) ;
 struct scatterlist* sg_next (struct scatterlist*) ;
 int sg_virt (struct scatterlist*) ;
 struct qdio_buffer_element* zfcp_qdio_sbale_next (struct zfcp_qdio*,struct zfcp_qdio_req*) ;
 struct qdio_buffer_element* zfcp_qdio_sbale_req (struct zfcp_qdio*,struct zfcp_qdio_req*) ;
 int zfcp_qdio_zero_sbals (int ,int ,int ) ;

int zfcp_qdio_sbals_from_sg(struct zfcp_qdio *qdio, struct zfcp_qdio_req *q_req,
       struct scatterlist *sg)
{
 struct qdio_buffer_element *sbale;


 sbale = zfcp_qdio_sbale_req(qdio, q_req);
 sbale->sflags |= q_req->sbtype;

 for (; sg; sg = sg_next(sg)) {
  sbale = zfcp_qdio_sbale_next(qdio, q_req);
  if (!sbale) {
   atomic_inc(&qdio->req_q_full);
   zfcp_qdio_zero_sbals(qdio->req_q, q_req->sbal_first,
          q_req->sbal_number);
   return -EINVAL;
  }
  sbale->addr = sg_virt(sg);
  sbale->length = sg->length;
 }
 return 0;
}
