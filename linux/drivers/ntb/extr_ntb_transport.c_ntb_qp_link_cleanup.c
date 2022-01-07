
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pci_dev {int dev; } ;
struct ntb_transport_qp {int link_is_up; int cb_data; int (* event_handler ) (int ,int ) ;int link_work; int qp_num; struct ntb_transport_ctx* transport; } ;
struct ntb_transport_ctx {TYPE_1__* ndev; } ;
struct TYPE_2__ {struct pci_dev* pdev; } ;


 int cancel_delayed_work_sync (int *) ;
 int dev_info (int *,char*,int ) ;
 int ntb_qp_link_down_reset (struct ntb_transport_qp*) ;
 int stub1 (int ,int ) ;

__attribute__((used)) static void ntb_qp_link_cleanup(struct ntb_transport_qp *qp)
{
 struct ntb_transport_ctx *nt = qp->transport;
 struct pci_dev *pdev = nt->ndev->pdev;

 dev_info(&pdev->dev, "qp %d: Link Cleanup\n", qp->qp_num);

 cancel_delayed_work_sync(&qp->link_work);
 ntb_qp_link_down_reset(qp);

 if (qp->event_handler)
  qp->event_handler(qp->cb_data, qp->link_is_up);
}
