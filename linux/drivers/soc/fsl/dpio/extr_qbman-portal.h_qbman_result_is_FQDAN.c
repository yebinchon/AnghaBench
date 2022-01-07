
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int verb; } ;
struct dpaa2_dq {TYPE_1__ dq; } ;


 int QBMAN_RESULT_FQDAN ;
 int QBMAN_RESULT_MASK ;

__attribute__((used)) static inline int qbman_result_is_FQDAN(const struct dpaa2_dq *dq)
{
 return ((dq->dq.verb & QBMAN_RESULT_MASK) == QBMAN_RESULT_FQDAN);
}
