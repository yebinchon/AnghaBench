
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct tb_ring {int running; int work; TYPE_2__* nhi; int lock; scalar_t__ tail; scalar_t__ head; int hop; } ;
struct TYPE_4__ {int lock; TYPE_1__* pdev; scalar_t__ going_away; } ;
struct TYPE_3__ {int dev; } ;


 int RING_TYPE (struct tb_ring*) ;
 int dev_WARN (int *,char*,int ,int ) ;
 int dev_dbg (int *,char*,int ,int ) ;
 int flush_work (int *) ;
 int ring_interrupt_active (struct tb_ring*,int) ;
 int ring_iowrite32desc (struct tb_ring*,int ,int) ;
 int ring_iowrite32options (struct tb_ring*,int ,int ) ;
 int ring_iowrite64desc (struct tb_ring*,int ,int ) ;
 int schedule_work (int *) ;
 int spin_lock (int *) ;
 int spin_lock_irq (int *) ;
 int spin_unlock (int *) ;
 int spin_unlock_irq (int *) ;

void tb_ring_stop(struct tb_ring *ring)
{
 spin_lock_irq(&ring->nhi->lock);
 spin_lock(&ring->lock);
 dev_dbg(&ring->nhi->pdev->dev, "stopping %s %d\n",
  RING_TYPE(ring), ring->hop);
 if (ring->nhi->going_away)
  goto err;
 if (!ring->running) {
  dev_WARN(&ring->nhi->pdev->dev, "%s %d already stopped\n",
    RING_TYPE(ring), ring->hop);
  goto err;
 }
 ring_interrupt_active(ring, 0);

 ring_iowrite32options(ring, 0, 0);
 ring_iowrite64desc(ring, 0, 0);
 ring_iowrite32desc(ring, 0, 8);
 ring_iowrite32desc(ring, 0, 12);
 ring->head = 0;
 ring->tail = 0;
 ring->running = 0;

err:
 spin_unlock(&ring->lock);
 spin_unlock_irq(&ring->nhi->lock);




 schedule_work(&ring->work);
 flush_work(&ring->work);
}
