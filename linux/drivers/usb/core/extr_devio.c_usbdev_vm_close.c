
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {struct usb_memory* vm_private_data; } ;
struct usb_memory {int vma_use_count; } ;


 int dec_usb_memory_use_count (struct usb_memory*,int *) ;

__attribute__((used)) static void usbdev_vm_close(struct vm_area_struct *vma)
{
 struct usb_memory *usbm = vma->vm_private_data;

 dec_usb_memory_use_count(usbm, &usbm->vma_use_count);
}
