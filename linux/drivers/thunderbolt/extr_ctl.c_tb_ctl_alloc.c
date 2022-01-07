
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct tb_nhi {TYPE_1__* pdev; } ;
struct tb_ctl {TYPE_3__** rx_packets; int rx; int tx; int frame_pool; int request_queue; int request_queue_lock; void* callback_data; int callback; struct tb_nhi* nhi; } ;
typedef int event_cb ;
struct TYPE_5__ {int callback; } ;
struct TYPE_6__ {TYPE_2__ frame; } ;
struct TYPE_4__ {int dev; } ;


 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int RING_FLAG_NO_SUSPEND ;
 int TB_CTL_RX_PKG_COUNT ;
 int TB_FRAME_SIZE ;
 int dma_pool_create (char*,int *,int ,int,int ) ;
 struct tb_ctl* kzalloc (int,int ) ;
 int mutex_init (int *) ;
 int tb_ctl_dbg (struct tb_ctl*,char*) ;
 int tb_ctl_free (struct tb_ctl*) ;
 TYPE_3__* tb_ctl_pkg_alloc (struct tb_ctl*) ;
 int tb_ctl_rx_callback ;
 int tb_ring_alloc_rx (struct tb_nhi*,int ,int,int ,int,int,int *,int *) ;
 int tb_ring_alloc_tx (struct tb_nhi*,int ,int,int ) ;

struct tb_ctl *tb_ctl_alloc(struct tb_nhi *nhi, event_cb cb, void *cb_data)
{
 int i;
 struct tb_ctl *ctl = kzalloc(sizeof(*ctl), GFP_KERNEL);
 if (!ctl)
  return ((void*)0);
 ctl->nhi = nhi;
 ctl->callback = cb;
 ctl->callback_data = cb_data;

 mutex_init(&ctl->request_queue_lock);
 INIT_LIST_HEAD(&ctl->request_queue);
 ctl->frame_pool = dma_pool_create("thunderbolt_ctl", &nhi->pdev->dev,
      TB_FRAME_SIZE, 4, 0);
 if (!ctl->frame_pool)
  goto err;

 ctl->tx = tb_ring_alloc_tx(nhi, 0, 10, RING_FLAG_NO_SUSPEND);
 if (!ctl->tx)
  goto err;

 ctl->rx = tb_ring_alloc_rx(nhi, 0, 10, RING_FLAG_NO_SUSPEND, 0xffff,
    0xffff, ((void*)0), ((void*)0));
 if (!ctl->rx)
  goto err;

 for (i = 0; i < TB_CTL_RX_PKG_COUNT; i++) {
  ctl->rx_packets[i] = tb_ctl_pkg_alloc(ctl);
  if (!ctl->rx_packets[i])
   goto err;
  ctl->rx_packets[i]->frame.callback = tb_ctl_rx_callback;
 }

 tb_ctl_dbg(ctl, "control channel created\n");
 return ctl;
err:
 tb_ctl_free(ctl);
 return ((void*)0);
}
