
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pci_dev {int dummy; } ;
struct TYPE_2__ {int (* write_block ) (struct pci_dev*,void*,unsigned int,unsigned int) ;} ;


 int EOPNOTSUPP ;
 TYPE_1__ hvpci_block_ops ;
 int stub1 (struct pci_dev*,void*,unsigned int,unsigned int) ;

int hyperv_write_cfg_blk(struct pci_dev *dev, void *buf, unsigned int len,
    unsigned int block_id)
{
 if (!hvpci_block_ops.write_block)
  return -EOPNOTSUPP;

 return hvpci_block_ops.write_block(dev, buf, len, block_id);
}
