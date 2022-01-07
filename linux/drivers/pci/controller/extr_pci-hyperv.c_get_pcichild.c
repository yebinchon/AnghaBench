
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hv_pci_dev {int refs; } ;


 int refcount_inc (int *) ;

__attribute__((used)) static void get_pcichild(struct hv_pci_dev *hpdev)
{
 refcount_inc(&hpdev->refs);
}
