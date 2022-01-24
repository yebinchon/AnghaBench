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
struct pci_epc_mem {unsigned long* bitmap; size_t page_size; int pages; size_t size; int /*<<< orphan*/  phys_base; } ;
struct pci_epc {struct pci_epc_mem* mem; } ;
typedef  int /*<<< orphan*/  phys_addr_t ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 size_t PAGE_SIZE ; 
 unsigned int FUNC1 (size_t) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_epc_mem*) ; 
 void* FUNC3 (int,int /*<<< orphan*/ ) ; 

int FUNC4(struct pci_epc *epc, phys_addr_t phys_base, size_t size,
		       size_t page_size)
{
	int ret;
	struct pci_epc_mem *mem;
	unsigned long *bitmap;
	unsigned int page_shift;
	int pages;
	int bitmap_size;

	if (page_size < PAGE_SIZE)
		page_size = PAGE_SIZE;

	page_shift = FUNC1(page_size);
	pages = size >> page_shift;
	bitmap_size = FUNC0(pages) * sizeof(long);

	mem = FUNC3(sizeof(*mem), GFP_KERNEL);
	if (!mem) {
		ret = -ENOMEM;
		goto err;
	}

	bitmap = FUNC3(bitmap_size, GFP_KERNEL);
	if (!bitmap) {
		ret = -ENOMEM;
		goto err_mem;
	}

	mem->bitmap = bitmap;
	mem->phys_base = phys_base;
	mem->page_size = page_size;
	mem->pages = pages;
	mem->size = size;

	epc->mem = mem;

	return 0;

err_mem:
	FUNC2(mem);

err:
return ret;
}