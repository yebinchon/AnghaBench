
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct isci_remote_device {int kref; } ;


 int isci_remote_device_release ;
 int kref_put (int *,int ) ;

__attribute__((used)) static inline void isci_put_device(struct isci_remote_device *idev)
{
 if (idev)
  kref_put(&idev->kref, isci_remote_device_release);
}
