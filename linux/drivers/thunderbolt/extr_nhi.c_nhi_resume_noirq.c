
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tb_nhi {int going_away; TYPE_1__* ops; } ;
struct tb {struct tb_nhi* nhi; } ;
struct pci_dev {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_2__ {int (* resume_noirq ) (struct tb_nhi*) ;} ;


 int nhi_enable_int_throttling (struct tb_nhi*) ;
 int pci_device_is_present (struct pci_dev*) ;
 struct tb* pci_get_drvdata (struct pci_dev*) ;
 int stub1 (struct tb_nhi*) ;
 int tb_domain_resume_noirq (struct tb*) ;
 struct pci_dev* to_pci_dev (struct device*) ;

__attribute__((used)) static int nhi_resume_noirq(struct device *dev)
{
 struct pci_dev *pdev = to_pci_dev(dev);
 struct tb *tb = pci_get_drvdata(pdev);
 struct tb_nhi *nhi = tb->nhi;
 int ret;






 if (!pci_device_is_present(pdev)) {
  nhi->going_away = 1;
 } else {
  if (nhi->ops && nhi->ops->resume_noirq) {
   ret = nhi->ops->resume_noirq(nhi);
   if (ret)
    return ret;
  }
  nhi_enable_int_throttling(tb->nhi);
 }

 return tb_domain_resume_noirq(tb);
}
