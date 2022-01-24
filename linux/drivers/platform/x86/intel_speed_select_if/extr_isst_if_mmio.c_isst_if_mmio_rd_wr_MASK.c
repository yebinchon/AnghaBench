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
typedef  int /*<<< orphan*/  u8 ;
struct pci_dev {int dummy; } ;
struct isst_if_io_reg {int reg; int /*<<< orphan*/  value; scalar_t__ read_write; int /*<<< orphan*/  logical_cpu; } ;
struct isst_if_device {int /*<<< orphan*/  mutex; scalar_t__ punit_mmio; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAP_SYS_ADMIN ; 
 long EINVAL ; 
 long EPERM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct pci_dev* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct isst_if_device* FUNC4 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static long FUNC7(u8 *cmd_ptr, int *write_only, int resume)
{
	struct isst_if_device *punit_dev;
	struct isst_if_io_reg *io_reg;
	struct pci_dev *pdev;

	io_reg = (struct isst_if_io_reg *)cmd_ptr;
	if (io_reg->reg < 0x04 || io_reg->reg > 0xD0)
		return -EINVAL;

	if (io_reg->read_write && !FUNC0(CAP_SYS_ADMIN))
		return -EPERM;

	pdev = FUNC1(io_reg->logical_cpu, 0, 0, 1);
	if (!pdev)
		return -EINVAL;

	punit_dev = FUNC4(pdev);
	if (!punit_dev)
		return -EINVAL;

	/*
	 * Ensure that operation is complete on a PCI device to avoid read
	 * write race by using per PCI device mutex.
	 */
	FUNC2(&punit_dev->mutex);
	if (io_reg->read_write) {
		FUNC6(io_reg->value, punit_dev->punit_mmio+io_reg->reg);
		*write_only = 1;
	} else {
		io_reg->value = FUNC5(punit_dev->punit_mmio+io_reg->reg);
		*write_only = 0;
	}
	FUNC3(&punit_dev->mutex);

	return 0;
}