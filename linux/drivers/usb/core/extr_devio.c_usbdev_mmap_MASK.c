#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct vm_area_struct {size_t vm_end; size_t vm_start; int vm_flags; struct usb_memory* vm_private_data; int /*<<< orphan*/ * vm_ops; int /*<<< orphan*/  vm_page_prot; } ;
struct usb_memory {size_t size; size_t vm_start; int vma_use_count; int /*<<< orphan*/  memlist; void* mem; struct usb_dev_state* ps; int /*<<< orphan*/  dma_handle; } ;
struct usb_dev_state {int /*<<< orphan*/  lock; int /*<<< orphan*/  memory_list; int /*<<< orphan*/  dev; } ;
struct file {struct usb_dev_state* private_data; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;

/* Variables and functions */
 int EAGAIN ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int GFP_USER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int PAGE_SHIFT ; 
 int VM_DONTDUMP ; 
 int VM_DONTEXPAND ; 
 int VM_IO ; 
 int __GFP_NOWARN ; 
 int /*<<< orphan*/  FUNC1 (struct usb_memory*,int*) ; 
 int /*<<< orphan*/  FUNC2 (struct usb_memory*) ; 
 struct usb_memory* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (void*,int /*<<< orphan*/ ,size_t) ; 
 scalar_t__ FUNC6 (struct vm_area_struct*,size_t,int,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 void* FUNC9 (int /*<<< orphan*/ ,size_t,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  usbdev_vm_ops ; 
 int /*<<< orphan*/  FUNC10 (size_t) ; 
 int FUNC11 (size_t) ; 
 int FUNC12 (void*) ; 

__attribute__((used)) static int FUNC13(struct file *file, struct vm_area_struct *vma)
{
	struct usb_memory *usbm = NULL;
	struct usb_dev_state *ps = file->private_data;
	size_t size = vma->vm_end - vma->vm_start;
	void *mem;
	unsigned long flags;
	dma_addr_t dma_handle;
	int ret;

	ret = FUNC11(size + sizeof(struct usb_memory));
	if (ret)
		goto error;

	usbm = FUNC3(sizeof(struct usb_memory), GFP_KERNEL);
	if (!usbm) {
		ret = -ENOMEM;
		goto error_decrease_mem;
	}

	mem = FUNC9(ps->dev, size, GFP_USER | __GFP_NOWARN,
			&dma_handle);
	if (!mem) {
		ret = -ENOMEM;
		goto error_free_usbm;
	}

	FUNC5(mem, 0, size);

	usbm->mem = mem;
	usbm->dma_handle = dma_handle;
	usbm->size = size;
	usbm->ps = ps;
	usbm->vm_start = vma->vm_start;
	usbm->vma_use_count = 1;
	FUNC0(&usbm->memlist);

	if (FUNC6(vma, vma->vm_start,
			FUNC12(usbm->mem) >> PAGE_SHIFT,
			size, vma->vm_page_prot) < 0) {
		FUNC1(usbm, &usbm->vma_use_count);
		return -EAGAIN;
	}

	vma->vm_flags |= VM_IO;
	vma->vm_flags |= (VM_DONTEXPAND | VM_DONTDUMP);
	vma->vm_ops = &usbdev_vm_ops;
	vma->vm_private_data = usbm;

	FUNC7(&ps->lock, flags);
	FUNC4(&usbm->memlist, &ps->memory_list);
	FUNC8(&ps->lock, flags);

	return 0;

error_free_usbm:
	FUNC2(usbm);
error_decrease_mem:
	FUNC10(size + sizeof(struct usb_memory));
error:
	return ret;
}