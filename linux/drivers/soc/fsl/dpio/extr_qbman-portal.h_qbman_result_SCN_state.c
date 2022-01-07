
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int state; } ;
struct dpaa2_dq {TYPE_1__ scn; } ;



__attribute__((used)) static inline u8 qbman_result_SCN_state(const struct dpaa2_dq *scn)
{
 return scn->scn.state;
}
