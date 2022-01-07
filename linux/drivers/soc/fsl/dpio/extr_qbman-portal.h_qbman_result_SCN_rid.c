
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int rid_tok; } ;
struct dpaa2_dq {TYPE_1__ scn; } ;


 int SCN_RID_MASK ;
 int le32_to_cpu (int ) ;

__attribute__((used)) static inline u32 qbman_result_SCN_rid(const struct dpaa2_dq *scn)
{
 return le32_to_cpu(scn->scn.rid_tok) & SCN_RID_MASK;
}
