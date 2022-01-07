
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ntb_dev {int released; } ;
struct device {int dummy; } ;


 int complete (int *) ;
 struct ntb_dev* dev_ntb (struct device*) ;

__attribute__((used)) static void ntb_dev_release(struct device *dev)
{
 struct ntb_dev *ntb = dev_ntb(dev);

 complete(&ntb->released);
}
