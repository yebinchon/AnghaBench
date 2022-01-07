
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_2__ {int ctx; } ;
struct dpaa2_dq {TYPE_1__ scn; } ;


 int le64_to_cpu (int ) ;

__attribute__((used)) static inline u64 qbman_result_SCN_ctx(const struct dpaa2_dq *scn)
{
 return le64_to_cpu(scn->scn.ctx);
}
