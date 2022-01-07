
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct qman_fq {int idx; } ;


 int DPAA_ASSERT (int) ;
 scalar_t__ WARN_ON (int) ;
 struct qman_fq** fq_table ;
 int num_fqids ;

__attribute__((used)) static struct qman_fq *idx_to_fq(u32 idx)
{
 struct qman_fq *fq;





 fq = fq_table[idx];
 DPAA_ASSERT(!fq || idx == fq->idx);

 return fq;
}
