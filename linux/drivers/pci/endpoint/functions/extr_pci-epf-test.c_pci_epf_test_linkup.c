
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_epf_test {int cmd_handler; } ;
struct pci_epf {int dummy; } ;


 struct pci_epf_test* epf_get_drvdata (struct pci_epf*) ;
 int kpcitest_workqueue ;
 int msecs_to_jiffies (int) ;
 int queue_delayed_work (int ,int *,int ) ;

__attribute__((used)) static void pci_epf_test_linkup(struct pci_epf *epf)
{
 struct pci_epf_test *epf_test = epf_get_drvdata(epf);

 queue_delayed_work(kpcitest_workqueue, &epf_test->cmd_handler,
      msecs_to_jiffies(1));
}
