
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {size_t vm_end; size_t vm_start; int vm_flags; struct usb_memory* vm_private_data; int * vm_ops; int vm_page_prot; } ;
struct usb_memory {size_t size; size_t vm_start; int vma_use_count; int memlist; void* mem; struct usb_dev_state* ps; int dma_handle; } ;
struct usb_dev_state {int lock; int memory_list; int dev; } ;
struct file {struct usb_dev_state* private_data; } ;
typedef int dma_addr_t ;


 int EAGAIN ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int GFP_USER ;
 int INIT_LIST_HEAD (int *) ;
 int PAGE_SHIFT ;
 int VM_DONTDUMP ;
 int VM_DONTEXPAND ;
 int VM_IO ;
 int __GFP_NOWARN ;
 int dec_usb_memory_use_count (struct usb_memory*,int*) ;
 int kfree (struct usb_memory*) ;
 struct usb_memory* kzalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 int memset (void*,int ,size_t) ;
 scalar_t__ remap_pfn_range (struct vm_area_struct*,size_t,int,size_t,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 void* usb_alloc_coherent (int ,size_t,int,int *) ;
 int usbdev_vm_ops ;
 int usbfs_decrease_memory_usage (size_t) ;
 int usbfs_increase_memory_usage (size_t) ;
 int virt_to_phys (void*) ;

__attribute__((used)) static int usbdev_mmap(struct file *file, struct vm_area_struct *vma)
{
 struct usb_memory *usbm = ((void*)0);
 struct usb_dev_state *ps = file->private_data;
 size_t size = vma->vm_end - vma->vm_start;
 void *mem;
 unsigned long flags;
 dma_addr_t dma_handle;
 int ret;

 ret = usbfs_increase_memory_usage(size + sizeof(struct usb_memory));
 if (ret)
  goto error;

 usbm = kzalloc(sizeof(struct usb_memory), GFP_KERNEL);
 if (!usbm) {
  ret = -ENOMEM;
  goto error_decrease_mem;
 }

 mem = usb_alloc_coherent(ps->dev, size, GFP_USER | __GFP_NOWARN,
   &dma_handle);
 if (!mem) {
  ret = -ENOMEM;
  goto error_free_usbm;
 }

 memset(mem, 0, size);

 usbm->mem = mem;
 usbm->dma_handle = dma_handle;
 usbm->size = size;
 usbm->ps = ps;
 usbm->vm_start = vma->vm_start;
 usbm->vma_use_count = 1;
 INIT_LIST_HEAD(&usbm->memlist);

 if (remap_pfn_range(vma, vma->vm_start,
   virt_to_phys(usbm->mem) >> PAGE_SHIFT,
   size, vma->vm_page_prot) < 0) {
  dec_usb_memory_use_count(usbm, &usbm->vma_use_count);
  return -EAGAIN;
 }

 vma->vm_flags |= VM_IO;
 vma->vm_flags |= (VM_DONTEXPAND | VM_DONTDUMP);
 vma->vm_ops = &usbdev_vm_ops;
 vma->vm_private_data = usbm;

 spin_lock_irqsave(&ps->lock, flags);
 list_add_tail(&usbm->memlist, &ps->memory_list);
 spin_unlock_irqrestore(&ps->lock, flags);

 return 0;

error_free_usbm:
 kfree(usbm);
error_decrease_mem:
 usbfs_decrease_memory_usage(size + sizeof(struct usb_memory));
error:
 return ret;
}
