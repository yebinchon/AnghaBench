
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hv_pci_dev {int refs; } ;


 int kfree (struct hv_pci_dev*) ;
 scalar_t__ refcount_dec_and_test (int *) ;

__attribute__((used)) static void put_pcichild(struct hv_pci_dev *hpdev)
{
 if (refcount_dec_and_test(&hpdev->refs))
  kfree(hpdev);
}
