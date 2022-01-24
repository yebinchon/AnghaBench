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
struct vme_dma_pci {int /*<<< orphan*/  address; } ;
struct vme_dma_attr {void* private; int /*<<< orphan*/  type; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  VME_DMA_PCI ; 
 int /*<<< orphan*/  FUNC0 (struct vme_dma_attr*) ; 
 void* FUNC1 (int,int /*<<< orphan*/ ) ; 

struct vme_dma_attr *FUNC2(dma_addr_t address)
{
	struct vme_dma_attr *attributes;
	struct vme_dma_pci *pci_attr;

	/* XXX Run some sanity checks here */

	attributes = FUNC1(sizeof(*attributes), GFP_KERNEL);
	if (!attributes)
		goto err_attr;

	pci_attr = FUNC1(sizeof(*pci_attr), GFP_KERNEL);
	if (!pci_attr)
		goto err_pci;

	attributes->type = VME_DMA_PCI;
	attributes->private = (void *)pci_attr;

	pci_attr->address = address;

	return attributes;

err_pci:
	FUNC0(attributes);
err_attr:
	return NULL;
}