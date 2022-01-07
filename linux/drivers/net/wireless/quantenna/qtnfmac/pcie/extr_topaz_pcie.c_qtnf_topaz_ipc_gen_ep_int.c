
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int sysctl_bar; } ;
struct qtnf_pcie_topaz_state {TYPE_1__ base; } ;


 int TOPAZ_CTL_M2L_INT (int ) ;
 int TOPAZ_IPC_IRQ_WORD (int ) ;
 int TOPAZ_RC_CTRL_IRQ ;
 int writel (int ,int ) ;

__attribute__((used)) static void qtnf_topaz_ipc_gen_ep_int(void *arg)
{
 struct qtnf_pcie_topaz_state *ts = arg;

 writel(TOPAZ_IPC_IRQ_WORD(TOPAZ_RC_CTRL_IRQ),
        TOPAZ_CTL_M2L_INT(ts->base.sysctl_bar));
}
