
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvme_dev {unsigned int* io_queues; } ;
struct irq_affinity {unsigned int* set_size; int nr_sets; struct nvme_dev* priv; } ;


 size_t HCTX_TYPE_DEFAULT ;
 size_t HCTX_TYPE_READ ;
 unsigned int write_queues ;

__attribute__((used)) static void nvme_calc_irq_sets(struct irq_affinity *affd, unsigned int nrirqs)
{
 struct nvme_dev *dev = affd->priv;
 unsigned int nr_read_queues;
 if (!nrirqs) {
  nrirqs = 1;
  nr_read_queues = 0;
 } else if (nrirqs == 1 || !write_queues) {
  nr_read_queues = 0;
 } else if (write_queues >= nrirqs) {
  nr_read_queues = 1;
 } else {
  nr_read_queues = nrirqs - write_queues;
 }

 dev->io_queues[HCTX_TYPE_DEFAULT] = nrirqs - nr_read_queues;
 affd->set_size[HCTX_TYPE_DEFAULT] = nrirqs - nr_read_queues;
 dev->io_queues[HCTX_TYPE_READ] = nr_read_queues;
 affd->set_size[HCTX_TYPE_READ] = nr_read_queues;
 affd->nr_sets = nr_read_queues ? 2 : 1;
}
