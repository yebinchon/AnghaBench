
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct switchtec_ntb {void* peer_nr_lut_mw; void* peer_nr_direct_mw; TYPE_1__* stdev; TYPE_2__* mmio_peer_ctrl; int peer_direct_mw_to_bar; void* nr_lut_mw; void* nr_direct_mw; TYPE_2__* mmio_self_ctrl; int direct_mw_to_bar; } ;
struct TYPE_4__ {int lut_table_entries; } ;
struct TYPE_3__ {int dev; } ;


 int dev_dbg (int *,char*,void*,void*) ;
 void* ioread16 (int *) ;
 void* map_bars (int ,TYPE_2__*) ;
 void* rounddown_pow_of_two (void*) ;

__attribute__((used)) static void switchtec_ntb_init_mw(struct switchtec_ntb *sndev)
{
 sndev->nr_direct_mw = map_bars(sndev->direct_mw_to_bar,
           sndev->mmio_self_ctrl);

 sndev->nr_lut_mw = ioread16(&sndev->mmio_self_ctrl->lut_table_entries);
 sndev->nr_lut_mw = rounddown_pow_of_two(sndev->nr_lut_mw);

 dev_dbg(&sndev->stdev->dev, "MWs: %d direct, %d lut\n",
  sndev->nr_direct_mw, sndev->nr_lut_mw);

 sndev->peer_nr_direct_mw = map_bars(sndev->peer_direct_mw_to_bar,
         sndev->mmio_peer_ctrl);

 sndev->peer_nr_lut_mw =
  ioread16(&sndev->mmio_peer_ctrl->lut_table_entries);
 sndev->peer_nr_lut_mw = rounddown_pow_of_two(sndev->peer_nr_lut_mw);

 dev_dbg(&sndev->stdev->dev, "Peer MWs: %d direct, %d lut\n",
  sndev->peer_nr_direct_mw, sndev->peer_nr_lut_mw);

}
