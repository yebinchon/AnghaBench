
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct isci_remote_device {int kref; int flags; } ;
struct domain_device {struct isci_remote_device* lldd_dev; } ;


 int IDEV_GONE ;
 int kref_get (int *) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static inline struct isci_remote_device *isci_lookup_device(struct domain_device *dev)
{
 struct isci_remote_device *idev = dev->lldd_dev;

 if (idev && !test_bit(IDEV_GONE, &idev->flags)) {
  kref_get(&idev->kref);
  return idev;
 }

 return ((void*)0);
}
