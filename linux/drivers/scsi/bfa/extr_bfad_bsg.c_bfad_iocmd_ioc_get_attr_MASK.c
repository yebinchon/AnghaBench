#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {TYPE_4__* chip_rev; } ;
struct TYPE_7__ {int /*<<< orphan*/  ioc; } ;
struct bfad_s {TYPE_5__ pci_attr; int /*<<< orphan*/  bfad_lock; TYPE_1__ bfa; } ;
struct bfa_ioc_pci_attr_s {int dummy; } ;
struct TYPE_10__ {TYPE_5__* chip_rev; } ;
struct TYPE_9__ {int /*<<< orphan*/  optrom_ver; int /*<<< orphan*/  fw_ver; } ;
struct TYPE_8__ {int /*<<< orphan*/  bios_ver; int /*<<< orphan*/  fw_ver; int /*<<< orphan*/  driver_ver; int /*<<< orphan*/  driver; } ;
struct TYPE_12__ {TYPE_4__ pci_attr; TYPE_3__ adapter_attr; TYPE_2__ driver_attr; } ;
struct bfa_bsg_ioc_attr_s {int /*<<< orphan*/  status; TYPE_6__ ioc_attr; } ;

/* Variables and functions */
 int /*<<< orphan*/  BFAD_DRIVER_NAME ; 
 int /*<<< orphan*/  BFAD_DRIVER_VERSION ; 
 int /*<<< orphan*/  BFA_STATUS_OK ; 
 int /*<<< orphan*/  BFA_VERSION_LEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*,TYPE_5__*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC6(struct bfad_s *bfad, void *cmd)
{
	struct bfa_bsg_ioc_attr_s *iocmd = (struct bfa_bsg_ioc_attr_s *)cmd;
	unsigned long	flags;

	FUNC2(&bfad->bfad_lock, flags);
	FUNC0(&bfad->bfa.ioc, &iocmd->ioc_attr);
	FUNC3(&bfad->bfad_lock, flags);

	/* fill in driver attr info */
	FUNC4(iocmd->ioc_attr.driver_attr.driver, BFAD_DRIVER_NAME);
	FUNC5(iocmd->ioc_attr.driver_attr.driver_ver,
		BFAD_DRIVER_VERSION, BFA_VERSION_LEN);
	FUNC4(iocmd->ioc_attr.driver_attr.fw_ver,
		iocmd->ioc_attr.adapter_attr.fw_ver);
	FUNC4(iocmd->ioc_attr.driver_attr.bios_ver,
		iocmd->ioc_attr.adapter_attr.optrom_ver);

	/* copy chip rev info first otherwise it will be overwritten */
	FUNC1(bfad->pci_attr.chip_rev, iocmd->ioc_attr.pci_attr.chip_rev,
		sizeof(bfad->pci_attr.chip_rev));
	FUNC1(&iocmd->ioc_attr.pci_attr, &bfad->pci_attr,
		sizeof(struct bfa_ioc_pci_attr_s));

	iocmd->status = BFA_STATUS_OK;
	return 0;
}