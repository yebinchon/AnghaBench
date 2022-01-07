
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct most_dev {int usb_device; } ;
struct mbo {int bus_address; int ifp; } ;


 int GFP_KERNEL ;
 struct most_dev* to_mdev (int ) ;
 void* usb_alloc_coherent (int ,int ,int ,int *) ;

__attribute__((used)) static void *hdm_dma_alloc(struct mbo *mbo, u32 size)
{
 struct most_dev *mdev = to_mdev(mbo->ifp);

 return usb_alloc_coherent(mdev->usb_device, size, GFP_KERNEL,
      &mbo->bus_address);
}
