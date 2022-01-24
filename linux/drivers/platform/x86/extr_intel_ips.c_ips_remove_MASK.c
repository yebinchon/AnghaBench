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
struct pci_dev {int /*<<< orphan*/  dev; } ;
struct ips_driver {int orig_turbo_limit; scalar_t__ monitor; scalar_t__ adjust; int /*<<< orphan*/  irq; scalar_t__ gpu_turbo_disable; scalar_t__ gpu_busy; scalar_t__ gpu_lower; scalar_t__ gpu_raise; scalar_t__ read_mch_val; } ;

/* Variables and functions */
 int /*<<< orphan*/  TURBO_POWER_CURRENT_LIMIT ; 
 int TURBO_TDC_OVR_EN ; 
 int TURBO_TDP_OVR_EN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct ips_driver*) ; 
 int /*<<< orphan*/  i915_gpu_busy ; 
 int /*<<< orphan*/  i915_gpu_lower ; 
 int /*<<< orphan*/  i915_gpu_raise ; 
 int /*<<< orphan*/  i915_gpu_turbo_disable ; 
 int /*<<< orphan*/  i915_read_mch_val ; 
 int /*<<< orphan*/  FUNC2 (struct ips_driver*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct pci_dev*) ; 
 struct ips_driver* FUNC5 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC9(struct pci_dev *dev)
{
	struct ips_driver *ips = FUNC5(dev);
	u64 turbo_override;

	FUNC2(ips);

	/* Release i915 driver */
	if (ips->read_mch_val)
		FUNC7(i915_read_mch_val);
	if (ips->gpu_raise)
		FUNC7(i915_gpu_raise);
	if (ips->gpu_lower)
		FUNC7(i915_gpu_lower);
	if (ips->gpu_busy)
		FUNC7(i915_gpu_busy);
	if (ips->gpu_turbo_disable)
		FUNC7(i915_gpu_turbo_disable);

	FUNC6(TURBO_POWER_CURRENT_LIMIT, turbo_override);
	turbo_override &= ~(TURBO_TDC_OVR_EN | TURBO_TDP_OVR_EN);
	FUNC8(TURBO_POWER_CURRENT_LIMIT, turbo_override);
	FUNC8(TURBO_POWER_CURRENT_LIMIT, ips->orig_turbo_limit);

	FUNC1(ips->irq, ips);
	FUNC4(dev);
	if (ips->adjust)
		FUNC3(ips->adjust);
	if (ips->monitor)
		FUNC3(ips->monitor);
	FUNC0(&dev->dev, "IPS driver removed\n");
}