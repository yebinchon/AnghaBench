
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pci_dev {int dev; } ;
struct ntb_transport_qp {int qp_num; int tx_free_q; int ntb_tx_free_q_lock; int link_is_up; TYPE_1__* ndev; } ;
struct ntb_queue_entry {int flags; scalar_t__ len; int * buf; int * cb_data; } ;
struct TYPE_2__ {struct pci_dev* pdev; } ;


 int LINK_DOWN_FLAG ;
 int NTB_LINK_DOWN_TIMEOUT ;
 int dev_err (int *,char*,int ) ;
 int dev_info (int *,char*,int ) ;
 int msleep (int) ;
 struct ntb_queue_entry* ntb_list_rm (int *,int *) ;
 int ntb_process_tx (struct ntb_transport_qp*,struct ntb_queue_entry*) ;
 int ntb_qp_link_down_reset (struct ntb_transport_qp*) ;

__attribute__((used)) static void ntb_send_link_down(struct ntb_transport_qp *qp)
{
 struct pci_dev *pdev = qp->ndev->pdev;
 struct ntb_queue_entry *entry;
 int i, rc;

 if (!qp->link_is_up)
  return;

 dev_info(&pdev->dev, "qp %d: Send Link Down\n", qp->qp_num);

 for (i = 0; i < NTB_LINK_DOWN_TIMEOUT; i++) {
  entry = ntb_list_rm(&qp->ntb_tx_free_q_lock, &qp->tx_free_q);
  if (entry)
   break;
  msleep(100);
 }

 if (!entry)
  return;

 entry->cb_data = ((void*)0);
 entry->buf = ((void*)0);
 entry->len = 0;
 entry->flags = LINK_DOWN_FLAG;

 rc = ntb_process_tx(qp, entry);
 if (rc)
  dev_err(&pdev->dev, "ntb: QP%d unable to send linkdown msg\n",
   qp->qp_num);

 ntb_qp_link_down_reset(qp);
}
