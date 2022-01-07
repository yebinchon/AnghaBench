
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tb_nhi {TYPE_1__* ops; } ;
struct tb {struct tb_nhi* nhi; } ;
struct pci_dev {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_2__ {int (* suspend_noirq ) (struct tb_nhi*,int) ;} ;


 struct tb* pci_get_drvdata (struct pci_dev*) ;
 int stub1 (struct tb_nhi*,int) ;
 int tb_domain_suspend_noirq (struct tb*) ;
 struct pci_dev* to_pci_dev (struct device*) ;

__attribute__((used)) static int __nhi_suspend_noirq(struct device *dev, bool wakeup)
{
 struct pci_dev *pdev = to_pci_dev(dev);
 struct tb *tb = pci_get_drvdata(pdev);
 struct tb_nhi *nhi = tb->nhi;
 int ret;

 ret = tb_domain_suspend_noirq(tb);
 if (ret)
  return ret;

 if (nhi->ops && nhi->ops->suspend_noirq) {
  ret = nhi->ops->suspend_noirq(tb->nhi, wakeup);
  if (ret)
   return ret;
 }

 return 0;
}
