
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int of_node; } ;
struct platform_device {TYPE_1__ dev; } ;
struct pci_ecam_ops {int dummy; } ;
struct of_device_id {scalar_t__ data; } ;


 int gen_pci_of_match ;
 struct of_device_id* of_match_node (int ,int ) ;
 int pci_host_common_probe (struct platform_device*,struct pci_ecam_ops*) ;

__attribute__((used)) static int gen_pci_probe(struct platform_device *pdev)
{
 const struct of_device_id *of_id;
 struct pci_ecam_ops *ops;

 of_id = of_match_node(gen_pci_of_match, pdev->dev.of_node);
 ops = (struct pci_ecam_ops *)of_id->data;

 return pci_host_common_probe(pdev, ops);
}
