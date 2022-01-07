
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zfcp_qdio_req {int dummy; } ;
struct zfcp_qdio {int dummy; } ;
struct scatterlist {int length; } ;


 int sg_virt (struct scatterlist*) ;
 int zfcp_qdio_fill_next (struct zfcp_qdio*,struct zfcp_qdio_req*,int ,int ) ;
 int zfcp_qdio_set_sbale_last (struct zfcp_qdio*,struct zfcp_qdio_req*) ;

__attribute__((used)) static void zfcp_fsf_setup_ct_els_unchained(struct zfcp_qdio *qdio,
         struct zfcp_qdio_req *q_req,
         struct scatterlist *sg_req,
         struct scatterlist *sg_resp)
{
 zfcp_qdio_fill_next(qdio, q_req, sg_virt(sg_req), sg_req->length);
 zfcp_qdio_fill_next(qdio, q_req, sg_virt(sg_resp), sg_resp->length);
 zfcp_qdio_set_sbale_last(qdio, q_req);
}
