
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct most_dev {int usb_device; } ;
struct mbo {int bus_address; int virt_address; int ifp; } ;


 struct most_dev* to_mdev (int ) ;
 int usb_free_coherent (int ,int ,int ,int ) ;

__attribute__((used)) static void hdm_dma_free(struct mbo *mbo, u32 size)
{
 struct most_dev *mdev = to_mdev(mbo->ifp);

 usb_free_coherent(mdev->usb_device, size, mbo->virt_address,
     mbo->bus_address);
}
