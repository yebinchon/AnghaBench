
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct tegra_pcie_dw {int cid; int bpmp; } ;
struct TYPE_6__ {int size; struct tegra_bpmp_message* data; } ;
struct TYPE_5__ {int size; struct tegra_bpmp_message* data; } ;
struct TYPE_4__ {int pcie_controller; int enable; } ;
struct tegra_bpmp_message {TYPE_3__ rx; TYPE_2__ tx; int mrq; TYPE_1__ controller_state; int cmd; } ;
struct mrq_uphy_response {TYPE_3__ rx; TYPE_2__ tx; int mrq; TYPE_1__ controller_state; int cmd; } ;
struct mrq_uphy_request {TYPE_3__ rx; TYPE_2__ tx; int mrq; TYPE_1__ controller_state; int cmd; } ;
typedef int resp ;
typedef int req ;
typedef int msg ;


 int CMD_UPHY_PCIE_CONTROLLER_STATE ;
 int MRQ_UPHY ;
 int memset (struct tegra_bpmp_message*,int ,int) ;
 int tegra_bpmp_transfer (int ,struct tegra_bpmp_message*) ;

__attribute__((used)) static int tegra_pcie_bpmp_set_ctrl_state(struct tegra_pcie_dw *pcie,
       bool enable)
{
 struct mrq_uphy_response resp;
 struct tegra_bpmp_message msg;
 struct mrq_uphy_request req;


 if (pcie->cid == 5)
  return 0;

 memset(&req, 0, sizeof(req));
 memset(&resp, 0, sizeof(resp));

 req.cmd = CMD_UPHY_PCIE_CONTROLLER_STATE;
 req.controller_state.pcie_controller = pcie->cid;
 req.controller_state.enable = enable;

 memset(&msg, 0, sizeof(msg));
 msg.mrq = MRQ_UPHY;
 msg.tx.data = &req;
 msg.tx.size = sizeof(req);
 msg.rx.data = &resp;
 msg.rx.size = sizeof(resp);

 return tegra_bpmp_transfer(pcie->bpmp, &msg);
}
