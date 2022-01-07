
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tb_ring {int vector; scalar_t__ irq; struct tb_nhi* nhi; } ;
struct tb_nhi {TYPE_1__* pdev; int msix_ida; } ;
struct TYPE_2__ {int msix_enabled; } ;


 int GFP_KERNEL ;
 unsigned long IRQF_NO_SUSPEND ;
 int MSIX_MAX_VECS ;
 int ida_simple_get (int *,int ,int ,int ) ;
 scalar_t__ pci_irq_vector (TYPE_1__*,int) ;
 int request_irq (int,int ,unsigned long,char*,struct tb_ring*) ;
 int ring_msix ;

__attribute__((used)) static int ring_request_msix(struct tb_ring *ring, bool no_suspend)
{
 struct tb_nhi *nhi = ring->nhi;
 unsigned long irqflags;
 int ret;

 if (!nhi->pdev->msix_enabled)
  return 0;

 ret = ida_simple_get(&nhi->msix_ida, 0, MSIX_MAX_VECS, GFP_KERNEL);
 if (ret < 0)
  return ret;

 ring->vector = ret;

 ring->irq = pci_irq_vector(ring->nhi->pdev, ring->vector);
 if (ring->irq < 0)
  return ring->irq;

 irqflags = no_suspend ? IRQF_NO_SUSPEND : 0;
 return request_irq(ring->irq, ring_msix, irqflags, "thunderbolt", ring);
}
