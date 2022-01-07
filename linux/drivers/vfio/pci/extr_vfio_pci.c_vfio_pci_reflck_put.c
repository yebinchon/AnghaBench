
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vfio_pci_reflck {int kref; } ;


 int kref_put_mutex (int *,int ,int *) ;
 int reflck_lock ;
 int vfio_pci_reflck_release ;

__attribute__((used)) static void vfio_pci_reflck_put(struct vfio_pci_reflck *reflck)
{
 kref_put_mutex(&reflck->kref, vfio_pci_reflck_release, &reflck_lock);
}
