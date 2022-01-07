
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct qe_ep {int epnum; TYPE_1__* udc; } ;
struct TYPE_2__ {scalar_t__ soc_type; } ;


 int CPM_USB_EP_SHIFT ;
 int CPM_USB_STOP_TX ;
 int CPM_USB_STOP_TX_OPCODE ;
 scalar_t__ PORT_CPM ;
 int QE_CR_SUBBLOCK_USB ;
 int QE_USB_STOP_TX ;
 int cpm_command (int,int ) ;
 int qe_issue_cmd (int ,int ,int,int ) ;

__attribute__((used)) static int qe_ep_cmd_stoptx(struct qe_ep *ep)
{
 if (ep->udc->soc_type == PORT_CPM)
  cpm_command(CPM_USB_STOP_TX | (ep->epnum << CPM_USB_EP_SHIFT),
    CPM_USB_STOP_TX_OPCODE);
 else
  qe_issue_cmd(QE_USB_STOP_TX, QE_CR_SUBBLOCK_USB,
    ep->epnum, 0);

 return 0;
}
