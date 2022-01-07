
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct csio_lnode {int dummy; } ;
struct csio_hw {int dummy; } ;
typedef int ssize_t ;


 int PAGE_SIZE ;
 int class_to_shost (struct device*) ;
 scalar_t__ csio_is_hw_ready (struct csio_hw*) ;
 struct csio_hw* csio_lnode_to_hw (struct csio_lnode*) ;
 struct csio_lnode* shost_priv (int ) ;
 int snprintf (char*,int ,char*) ;

__attribute__((used)) static ssize_t
csio_show_hw_state(struct device *dev,
     struct device_attribute *attr, char *buf)
{
 struct csio_lnode *ln = shost_priv(class_to_shost(dev));
 struct csio_hw *hw = csio_lnode_to_hw(ln);

 if (csio_is_hw_ready(hw))
  return snprintf(buf, PAGE_SIZE, "ready\n");
 else
  return snprintf(buf, PAGE_SIZE, "not ready\n");
}
