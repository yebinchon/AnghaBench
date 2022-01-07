
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dpaa2_dq {int dummy; } ;


 int qbman_result_is_DQ (struct dpaa2_dq const*) ;

__attribute__((used)) static inline int qbman_result_is_SCN(const struct dpaa2_dq *dq)
{
 return !qbman_result_is_DQ(dq);
}
