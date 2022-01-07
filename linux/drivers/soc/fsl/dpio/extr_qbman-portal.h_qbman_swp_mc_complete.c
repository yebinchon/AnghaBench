
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct qbman_swp {int dummy; } ;


 int WARN_ON (int) ;
 void* qbman_swp_mc_result (struct qbman_swp*) ;
 int qbman_swp_mc_submit (struct qbman_swp*,void*,int ) ;

__attribute__((used)) static inline void *qbman_swp_mc_complete(struct qbman_swp *swp, void *cmd,
       u8 cmd_verb)
{
 int loopvar = 2000;

 qbman_swp_mc_submit(swp, cmd, cmd_verb);

 do {
  cmd = qbman_swp_mc_result(swp);
 } while (!cmd && loopvar--);

 WARN_ON(!loopvar);

 return cmd;
}
