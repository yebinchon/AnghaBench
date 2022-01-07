
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ntb_transport_ctx {int qp_count; int msi_db_mask; TYPE_2__* ndev; } ;
struct TYPE_4__ {TYPE_1__* pdev; } ;
struct TYPE_3__ {int dev; } ;


 int dev_dbg (int *,char*) ;
 int ntb_peer_db_set (TYPE_2__*,int ) ;
 int ntb_transport_setup_qp_msi (struct ntb_transport_ctx*,int) ;

__attribute__((used)) static void ntb_transport_msi_desc_changed(void *data)
{
 struct ntb_transport_ctx *nt = data;
 int i;

 dev_dbg(&nt->ndev->pdev->dev, "MSI descriptors changed");

 for (i = 0; i < nt->qp_count; i++)
  ntb_transport_setup_qp_msi(nt, i);

 ntb_peer_db_set(nt->ndev, nt->msi_db_mask);
}
