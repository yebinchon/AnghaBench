
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zfcp_qdio_req {int dummy; } ;
struct zfcp_qdio {int dummy; } ;
struct qdio_buffer_element {int eflags; } ;


 int SBAL_EFLAGS_LAST_ENTRY ;
 struct qdio_buffer_element* zfcp_qdio_sbale_curr (struct zfcp_qdio*,struct zfcp_qdio_req*) ;

__attribute__((used)) static inline
void zfcp_qdio_set_sbale_last(struct zfcp_qdio *qdio,
         struct zfcp_qdio_req *q_req)
{
 struct qdio_buffer_element *sbale;

 sbale = zfcp_qdio_sbale_curr(qdio, q_req);
 sbale->eflags |= SBAL_EFLAGS_LAST_ENTRY;
}
