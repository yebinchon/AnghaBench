
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct zfcp_qdio_req {int sbale_curr; } ;
struct zfcp_qdio {int max_sbale_per_sbal; } ;
struct qdio_buffer_element {int length; void* addr; } ;


 int BUG_ON (int) ;
 struct qdio_buffer_element* zfcp_qdio_sbale_curr (struct zfcp_qdio*,struct zfcp_qdio_req*) ;

__attribute__((used)) static inline
void zfcp_qdio_fill_next(struct zfcp_qdio *qdio, struct zfcp_qdio_req *q_req,
    void *data, u32 len)
{
 struct qdio_buffer_element *sbale;

 BUG_ON(q_req->sbale_curr == qdio->max_sbale_per_sbal - 1);
 q_req->sbale_curr++;
 sbale = zfcp_qdio_sbale_curr(qdio, q_req);
 sbale->addr = data;
 sbale->length = len;
}
