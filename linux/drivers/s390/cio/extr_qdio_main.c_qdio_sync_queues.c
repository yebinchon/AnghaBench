
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qdio_q {int irq_ptr; } ;


 scalar_t__ pci_out_supported (int ) ;
 int qdio_siga_sync_all (struct qdio_q*) ;
 int qdio_siga_sync_q (struct qdio_q*) ;

__attribute__((used)) static inline void qdio_sync_queues(struct qdio_q *q)
{

 if (pci_out_supported(q->irq_ptr))
  qdio_siga_sync_all(q);
 else
  qdio_siga_sync_q(q);
}
