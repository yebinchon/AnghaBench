
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct tb_ring {int running; int flags; int size; int sof_mask; int eof_mask; TYPE_2__* nhi; int lock; scalar_t__ is_tx; int descriptors_dma; int hop; } ;
struct TYPE_4__ {int lock; TYPE_1__* pdev; scalar_t__ going_away; } ;
struct TYPE_3__ {int dev; } ;


 int REG_RX_OPTIONS_E2E_HOP_MASK ;
 int REG_RX_OPTIONS_E2E_HOP_SHIFT ;
 int RING_E2E_UNUSED_HOPID ;
 int RING_FLAG_E2E ;
 int RING_FLAG_E2E_FLOW_CONTROL ;
 int RING_FLAG_ENABLE ;
 int RING_FLAG_FRAME ;
 int RING_FLAG_RAW ;
 int RING_TYPE (struct tb_ring*) ;
 int TB_FRAME_SIZE ;
 int dev_WARN (int *,char*) ;
 int dev_dbg (int *,char*,int ,int ) ;
 int ring_interrupt_active (struct tb_ring*,int) ;
 int ring_iowrite32desc (struct tb_ring*,int,int) ;
 int ring_iowrite32options (struct tb_ring*,int,int) ;
 int ring_iowrite64desc (struct tb_ring*,int ,int ) ;
 int spin_lock (int *) ;
 int spin_lock_irq (int *) ;
 int spin_unlock (int *) ;
 int spin_unlock_irq (int *) ;

void tb_ring_start(struct tb_ring *ring)
{
 u16 frame_size;
 u32 flags;

 spin_lock_irq(&ring->nhi->lock);
 spin_lock(&ring->lock);
 if (ring->nhi->going_away)
  goto err;
 if (ring->running) {
  dev_WARN(&ring->nhi->pdev->dev, "ring already started\n");
  goto err;
 }
 dev_dbg(&ring->nhi->pdev->dev, "starting %s %d\n",
  RING_TYPE(ring), ring->hop);

 if (ring->flags & RING_FLAG_FRAME) {

  frame_size = 0;
  flags = RING_FLAG_ENABLE;
 } else {
  frame_size = TB_FRAME_SIZE;
  flags = RING_FLAG_ENABLE | RING_FLAG_RAW;
 }

 if (ring->flags & RING_FLAG_E2E && !ring->is_tx) {
  u32 hop;






  hop = RING_E2E_UNUSED_HOPID << REG_RX_OPTIONS_E2E_HOP_SHIFT;
  hop &= REG_RX_OPTIONS_E2E_HOP_MASK;
  flags |= hop | RING_FLAG_E2E_FLOW_CONTROL;
 }

 ring_iowrite64desc(ring, ring->descriptors_dma, 0);
 if (ring->is_tx) {
  ring_iowrite32desc(ring, ring->size, 12);
  ring_iowrite32options(ring, 0, 4);
  ring_iowrite32options(ring, flags, 0);
 } else {
  u32 sof_eof_mask = ring->sof_mask << 16 | ring->eof_mask;

  ring_iowrite32desc(ring, (frame_size << 16) | ring->size, 12);
  ring_iowrite32options(ring, sof_eof_mask, 4);
  ring_iowrite32options(ring, flags, 0);
 }
 ring_interrupt_active(ring, 1);
 ring->running = 1;
err:
 spin_unlock(&ring->lock);
 spin_unlock_irq(&ring->nhi->lock);
}
