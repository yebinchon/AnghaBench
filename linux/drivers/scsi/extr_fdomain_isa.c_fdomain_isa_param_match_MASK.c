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
struct device {int dummy; } ;
struct Scsi_Host {int dummy; } ;

/* Variables and functions */
 int CFG1_IRQ_MASK ; 
 int /*<<< orphan*/  FDOMAIN_REGION_SIZE ; 
 scalar_t__ REG_CFG1 ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,struct Scsi_Host*) ; 
 struct Scsi_Host* FUNC2 (scalar_t__,int,int /*<<< orphan*/ ,struct device*) ; 
 int FUNC3 (scalar_t__) ; 
 scalar_t__* io ; 
 int* irq ; 
 int* irqs ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/ * scsi_id ; 

__attribute__((used)) static int FUNC6(struct device *dev, unsigned int ndev)
{
	struct Scsi_Host *sh;
	int irq_ = irq[ndev];

	if (!io[ndev])
		return 0;

	if (!FUNC5(io[ndev], FDOMAIN_REGION_SIZE, "fdomain_isa")) {
		FUNC0(dev, "base 0x%x already in use", io[ndev]);
		return 0;
	}

	if (irq_ <= 0)
		irq_ = irqs[(FUNC3(io[ndev] + REG_CFG1) & CFG1_IRQ_MASK) >> 1];

	sh = FUNC2(io[ndev], irq_, scsi_id[ndev], dev);
	if (!sh) {
		FUNC0(dev, "controller not found at base 0x%x", io[ndev]);
		FUNC4(io[ndev], FDOMAIN_REGION_SIZE);
		return 0;
	}

	FUNC1(dev, sh);
	return 1;
}