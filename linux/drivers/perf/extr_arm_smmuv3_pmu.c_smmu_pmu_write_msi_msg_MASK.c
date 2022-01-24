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
struct smmu_pmu {scalar_t__ reg_base; } ;
struct msi_msg {int address_lo; int /*<<< orphan*/  data; scalar_t__ address_hi; } ;
struct msi_desc {int dummy; } ;
struct device {int dummy; } ;
typedef  int phys_addr_t ;

/* Variables and functions */
 int MSI_CFG0_ADDR_MASK ; 
 int /*<<< orphan*/  MSI_CFG2_MEMATTR_DEVICE_nGnRE ; 
 scalar_t__ SMMU_PMCG_IRQ_CFG0 ; 
 scalar_t__ SMMU_PMCG_IRQ_CFG1 ; 
 scalar_t__ SMMU_PMCG_IRQ_CFG2 ; 
 struct smmu_pmu* FUNC0 (struct device*) ; 
 struct device* FUNC1 (struct msi_desc*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC4(struct msi_desc *desc, struct msi_msg *msg)
{
	phys_addr_t doorbell;
	struct device *dev = FUNC1(desc);
	struct smmu_pmu *pmu = FUNC0(dev);

	doorbell = (((u64)msg->address_hi) << 32) | msg->address_lo;
	doorbell &= MSI_CFG0_ADDR_MASK;

	FUNC3(doorbell, pmu->reg_base + SMMU_PMCG_IRQ_CFG0);
	FUNC2(msg->data, pmu->reg_base + SMMU_PMCG_IRQ_CFG1);
	FUNC2(MSI_CFG2_MEMATTR_DEVICE_nGnRE,
		       pmu->reg_base + SMMU_PMCG_IRQ_CFG2);
}