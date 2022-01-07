
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct idt_ntb_peer {void* mws; int port; int mw_cnt; } ;
struct TYPE_4__ {TYPE_1__* pdev; } ;
struct idt_ntb_dev {unsigned char peer_cnt; TYPE_2__ ntb; int lut_lock; struct idt_ntb_peer* peers; void* mws; int port; int mw_cnt; } ;
struct TYPE_3__ {int dev; } ;


 scalar_t__ IS_ERR (void*) ;
 int PTR_ERR (void*) ;
 int dev_dbg (int *,char*) ;
 int dev_err (int *,char*,int ) ;
 void* idt_scan_mws (struct idt_ntb_dev*,int ,int *) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static int idt_init_mws(struct idt_ntb_dev *ndev)
{
 struct idt_ntb_peer *peer;
 unsigned char pidx;


 ndev->mws = idt_scan_mws(ndev, ndev->port, &ndev->mw_cnt);
 if (IS_ERR(ndev->mws)) {
  dev_err(&ndev->ntb.pdev->dev,
   "Failed to scan mws of local port %hhu", ndev->port);
  return PTR_ERR(ndev->mws);
 }


 for (pidx = 0; pidx < ndev->peer_cnt; pidx++) {
  peer = &ndev->peers[pidx];
  peer->mws = idt_scan_mws(ndev, peer->port, &peer->mw_cnt);
  if (IS_ERR(peer->mws)) {
   dev_err(&ndev->ntb.pdev->dev,
    "Failed to scan mws of port %hhu", peer->port);
   return PTR_ERR(peer->mws);
  }
 }


 spin_lock_init(&ndev->lut_lock);

 dev_dbg(&ndev->ntb.pdev->dev, "Outbound and inbound MWs initialized");

 return 0;
}
