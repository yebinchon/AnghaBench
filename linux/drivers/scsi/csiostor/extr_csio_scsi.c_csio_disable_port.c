
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct csio_lnode {int portid; } ;
struct csio_hw {int lock; } ;
typedef size_t ssize_t ;


 size_t EINVAL ;
 int class_to_shost (struct device*) ;
 int csio_disable_lnodes (struct csio_hw*,int ,int) ;
 struct csio_hw* csio_lnode_to_hw (struct csio_lnode*) ;
 int csio_lnodes_block_by_port (struct csio_hw*,int ) ;
 int csio_lnodes_unblock_by_port (struct csio_hw*,int ) ;
 struct csio_lnode* shost_priv (int ) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static ssize_t
csio_disable_port(struct device *dev,
     struct device_attribute *attr, const char *buf, size_t count)
{
 struct csio_lnode *ln = shost_priv(class_to_shost(dev));
 struct csio_hw *hw = csio_lnode_to_hw(ln);
 bool disable;

 if (*buf == '1' || *buf == '0')
  disable = (*buf == '1') ? 1 : 0;
 else
  return -EINVAL;


 csio_lnodes_block_by_port(hw, ln->portid);

 spin_lock_irq(&hw->lock);
 csio_disable_lnodes(hw, ln->portid, disable);
 spin_unlock_irq(&hw->lock);


 csio_lnodes_unblock_by_port(hw, ln->portid);
 return count;
}
