
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_epf_test {int cmd_handler; struct pci_epf* epf; } ;
struct device {int dummy; } ;
struct pci_epf {int * header; struct device dev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_DELAYED_WORK (int *,int ) ;
 struct pci_epf_test* devm_kzalloc (struct device*,int,int ) ;
 int epf_set_drvdata (struct pci_epf*,struct pci_epf_test*) ;
 int pci_epf_test_cmd_handler ;
 int test_header ;

__attribute__((used)) static int pci_epf_test_probe(struct pci_epf *epf)
{
 struct pci_epf_test *epf_test;
 struct device *dev = &epf->dev;

 epf_test = devm_kzalloc(dev, sizeof(*epf_test), GFP_KERNEL);
 if (!epf_test)
  return -ENOMEM;

 epf->header = &test_header;
 epf_test->epf = epf;

 INIT_DELAYED_WORK(&epf_test->cmd_handler, pci_epf_test_cmd_handler);

 epf_set_drvdata(epf, epf_test);
 return 0;
}
