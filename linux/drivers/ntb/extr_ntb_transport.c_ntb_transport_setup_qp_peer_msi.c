
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {void* addr_offset; void* data; } ;
struct ntb_transport_qp {int use_msi; TYPE_3__* ndev; TYPE_1__ peer_msi_desc; } ;
struct ntb_transport_ctx {unsigned int msi_spad_offset; int ndev; int use_msi; struct ntb_transport_qp* qp_vec; } ;
struct TYPE_6__ {TYPE_2__* pdev; } ;
struct TYPE_5__ {int dev; } ;


 int PIDX ;
 int dev_dbg (int *,char*,unsigned int,void*,void*) ;
 int dev_info (int *,char*,unsigned int) ;
 void* ntb_peer_spad_read (TYPE_3__*,int ,int) ;
 int ntb_spad_count (int ) ;

__attribute__((used)) static void ntb_transport_setup_qp_peer_msi(struct ntb_transport_ctx *nt,
         unsigned int qp_num)
{
 struct ntb_transport_qp *qp = &nt->qp_vec[qp_num];
 int spad = qp_num * 2 + nt->msi_spad_offset;

 if (!nt->use_msi)
  return;

 if (spad >= ntb_spad_count(nt->ndev))
  return;

 qp->peer_msi_desc.addr_offset =
  ntb_peer_spad_read(qp->ndev, PIDX, spad);
 qp->peer_msi_desc.data =
  ntb_peer_spad_read(qp->ndev, PIDX, spad + 1);

 dev_dbg(&qp->ndev->pdev->dev, "QP%d Peer MSI addr=%x data=%x\n",
  qp_num, qp->peer_msi_desc.addr_offset, qp->peer_msi_desc.data);

 if (qp->peer_msi_desc.addr_offset) {
  qp->use_msi = 1;
  dev_info(&qp->ndev->pdev->dev,
    "Using MSI interrupts for QP%d\n", qp_num);
 }
}
