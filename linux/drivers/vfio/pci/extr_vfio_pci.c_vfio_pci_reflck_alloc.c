
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vfio_pci_reflck {int lock; int kref; } ;


 int ENOMEM ;
 struct vfio_pci_reflck* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 int kref_init (int *) ;
 struct vfio_pci_reflck* kzalloc (int,int ) ;
 int mutex_init (int *) ;

__attribute__((used)) static struct vfio_pci_reflck *vfio_pci_reflck_alloc(void)
{
 struct vfio_pci_reflck *reflck;

 reflck = kzalloc(sizeof(*reflck), GFP_KERNEL);
 if (!reflck)
  return ERR_PTR(-ENOMEM);

 kref_init(&reflck->kref);
 mutex_init(&reflck->lock);

 return reflck;
}
