
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct qbman_swp {int dummy; } ;


 int QBMAN_FQ_FORCE ;
 int qbman_swp_alt_fq_state (struct qbman_swp*,int ,int ) ;

__attribute__((used)) static inline int qbman_swp_fq_force(struct qbman_swp *s, u32 fqid)
{
 return qbman_swp_alt_fq_state(s, fqid, QBMAN_FQ_FORCE);
}
