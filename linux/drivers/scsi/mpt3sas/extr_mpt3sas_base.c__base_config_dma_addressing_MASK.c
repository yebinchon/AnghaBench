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
typedef  int u64 ;
struct sysinfo {int /*<<< orphan*/  totalram; } ;
struct pci_dev {int /*<<< orphan*/  dev; } ;
struct MPT3SAS_ADAPTER {scalar_t__ hba_mpi_version_belonged; int dma_mask; int sge_size; int /*<<< orphan*/ * base_add_sg_single; scalar_t__ is_mcpu_endpoint; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;
typedef  int /*<<< orphan*/  Mpi2SGESimple64_t ;
typedef  int /*<<< orphan*/  Mpi2SGESimple32_t ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int ENODEV ; 
 scalar_t__ MPI2_VERSION ; 
 int /*<<< orphan*/  _base_add_sg_single_32 ; 
 int /*<<< orphan*/  _base_add_sg_single_64 ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (struct MPT3SAS_ADAPTER*,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct sysinfo*) ; 

__attribute__((used)) static int
FUNC8(struct MPT3SAS_ADAPTER *ioc, struct pci_dev *pdev)
{
	u64 required_mask, coherent_mask;
	struct sysinfo s;
	/* Set 63 bit DMA mask for all SAS3 and SAS35 controllers */
	int dma_mask = (ioc->hba_mpi_version_belonged > MPI2_VERSION) ? 63 : 64;

	if (ioc->is_mcpu_endpoint)
		goto try_32bit;

	required_mask = FUNC2(&pdev->dev);
	if (sizeof(dma_addr_t) == 4 || required_mask == 32)
		goto try_32bit;

	if (ioc->dma_mask)
		coherent_mask = FUNC0(dma_mask);
	else
		coherent_mask = FUNC0(32);

	if (FUNC4(&pdev->dev, FUNC0(dma_mask)) ||
	    FUNC3(&pdev->dev, coherent_mask))
		goto try_32bit;

	ioc->base_add_sg_single = &_base_add_sg_single_64;
	ioc->sge_size = sizeof(Mpi2SGESimple64_t);
	ioc->dma_mask = dma_mask;
	goto out;

 try_32bit:
	if (FUNC5(&pdev->dev, FUNC0(32)))
		return -ENODEV;

	ioc->base_add_sg_single = &_base_add_sg_single_32;
	ioc->sge_size = sizeof(Mpi2SGESimple32_t);
	ioc->dma_mask = 32;
 out:
	FUNC7(&s);
	FUNC6(ioc, "%d BIT PCI BUS DMA ADDRESSING SUPPORTED, total mem (%ld kB)\n",
		 ioc->dma_mask, FUNC1(s.totalram));

	return 0;
}