
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvme_dev {unsigned int db_stride; } ;


 unsigned long NVME_REG_DBS ;

__attribute__((used)) static unsigned long db_bar_size(struct nvme_dev *dev, unsigned nr_io_queues)
{
 return NVME_REG_DBS + ((nr_io_queues + 1) * 8 * dev->db_stride);
}
