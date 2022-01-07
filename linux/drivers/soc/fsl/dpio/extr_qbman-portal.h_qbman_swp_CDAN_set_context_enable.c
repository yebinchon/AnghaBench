
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u16 ;
struct qbman_swp {int dummy; } ;


 int CODE_CDAN_WE_CTX ;
 int CODE_CDAN_WE_EN ;
 int qbman_swp_CDAN_set (struct qbman_swp*,int ,int,int,int ) ;

__attribute__((used)) static inline int qbman_swp_CDAN_set_context_enable(struct qbman_swp *s,
          u16 channelid,
          u64 ctx)
{
 return qbman_swp_CDAN_set(s, channelid,
      CODE_CDAN_WE_EN | CODE_CDAN_WE_CTX,
      1, ctx);
}
