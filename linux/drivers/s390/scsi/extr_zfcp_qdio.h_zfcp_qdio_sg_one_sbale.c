
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scatterlist {scalar_t__ length; } ;


 scalar_t__ ZFCP_QDIO_SBALE_LEN ;
 scalar_t__ sg_is_last (struct scatterlist*) ;

__attribute__((used)) static inline
int zfcp_qdio_sg_one_sbale(struct scatterlist *sg)
{
 return sg_is_last(sg) && sg->length <= ZFCP_QDIO_SBALE_LEN;
}
