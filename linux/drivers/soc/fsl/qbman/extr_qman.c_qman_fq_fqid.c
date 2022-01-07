
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct qman_fq {int fqid; } ;



u32 qman_fq_fqid(struct qman_fq *fq)
{
 return fq->fqid;
}
