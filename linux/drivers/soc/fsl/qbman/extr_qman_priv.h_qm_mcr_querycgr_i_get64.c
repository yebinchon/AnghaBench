
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct qm_mcr_querycgr {int i_bcnt_lo; scalar_t__ i_bcnt_hi; } ;


 int be32_to_cpu (int ) ;

__attribute__((used)) static inline u64 qm_mcr_querycgr_i_get64(const struct qm_mcr_querycgr *q)
{
 return ((u64)q->i_bcnt_hi << 32) | be32_to_cpu(q->i_bcnt_lo);
}
