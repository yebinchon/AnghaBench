
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct switchtec_ntb {int self_shared_dma; int self_partition; int mmio_peer_ctrl; TYPE_1__* stdev; } ;
struct TYPE_2__ {int dev; } ;


 int config_rsvd_lut_win (struct switchtec_ntb*,int ,int ,int ,int ) ;
 scalar_t__ crosslink_is_enabled (struct switchtec_ntb*) ;
 int dev_info (int *,char*) ;

__attribute__((used)) static int switchtec_ntb_reinit_peer(struct switchtec_ntb *sndev)
{
 int rc;

 if (crosslink_is_enabled(sndev))
  return 0;

 dev_info(&sndev->stdev->dev, "reinitialize shared memory window\n");
 rc = config_rsvd_lut_win(sndev, sndev->mmio_peer_ctrl, 0,
     sndev->self_partition,
     sndev->self_shared_dma);
 return rc;
}
