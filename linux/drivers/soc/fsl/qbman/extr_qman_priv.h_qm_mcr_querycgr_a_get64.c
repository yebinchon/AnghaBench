
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct qm_mcr_querycgr {int a_bcnt_lo; scalar_t__ a_bcnt_hi; } ;


 int be32_to_cpu (int ) ;

__attribute__((used)) static inline u64 qm_mcr_querycgr_a_get64(const struct qm_mcr_querycgr *q)
{
 return ((u64)q->a_bcnt_hi << 32) | be32_to_cpu(q->a_bcnt_lo);
}
