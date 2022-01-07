
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct csio_lnode {int dummy; } ;
struct csio_hw {int lock; } ;
typedef size_t ssize_t ;


 size_t EINVAL ;
 int class_to_shost (struct device*) ;
 int csio_hw_reset (struct csio_hw*) ;
 struct csio_hw* csio_lnode_to_hw (struct csio_lnode*) ;
 int csio_lnodes_block_request (struct csio_hw*) ;
 int csio_lnodes_exit (struct csio_hw*,int) ;
 int csio_lnodes_unblock_request (struct csio_hw*) ;
 struct csio_lnode* shost_priv (int ) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static ssize_t
csio_device_reset(struct device *dev,
     struct device_attribute *attr, const char *buf, size_t count)
{
 struct csio_lnode *ln = shost_priv(class_to_shost(dev));
 struct csio_hw *hw = csio_lnode_to_hw(ln);

 if (*buf != '1')
  return -EINVAL;


  csio_lnodes_exit(hw, 1);


 csio_lnodes_block_request(hw);

 spin_lock_irq(&hw->lock);
 csio_hw_reset(hw);
 spin_unlock_irq(&hw->lock);


 csio_lnodes_unblock_request(hw);
 return count;
}
