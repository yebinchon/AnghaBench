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
typedef  int u8 ;
typedef  int u16 ;
struct resource {int /*<<< orphan*/  start; } ;
struct device {struct device_node* of_node; } ;
struct platform_device {struct device dev; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  BMAN_REV10 ; 
 int /*<<< orphan*/  BMAN_REV20 ; 
 int /*<<< orphan*/  BMAN_REV21 ; 
 int BM_EIRQ_BSCN ; 
 int BM_POOL_MAX ; 
 int /*<<< orphan*/  DPAA_GENALLOC_OFF ; 
 int ENODEV ; 
 int ENXIO ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 int /*<<< orphan*/  IRQF_SHARED ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  REG_ERR_IER ; 
 int /*<<< orphan*/  REG_ERR_ISDR ; 
 int /*<<< orphan*/  REG_ERR_ISR ; 
 int __bman_probed ; 
 int /*<<< orphan*/  bm_bpalloc ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  bm_ccsr_start ; 
 int /*<<< orphan*/  FUNC3 (int*,int*,int*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  bman_ip_rev ; 
 int /*<<< orphan*/  bman_isr ; 
 int /*<<< orphan*/  FUNC5 (struct device*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct device*,char*,int,...) ; 
 int /*<<< orphan*/  FUNC7 (struct device*,char*,struct device_node*) ; 
 int /*<<< orphan*/  FUNC8 (struct device*,int /*<<< orphan*/ ,int,char*) ; 
 int /*<<< orphan*/  FUNC9 (struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC10 (struct device*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,struct device*) ; 
 int /*<<< orphan*/  fbpr_a ; 
 int /*<<< orphan*/  fbpr_sz ; 
 int FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int FUNC12 (struct platform_device*,int /*<<< orphan*/ ) ; 
 struct resource* FUNC13 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC14 (struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (struct resource*) ; 

__attribute__((used)) static int FUNC16(struct platform_device *pdev)
{
	int ret, err_irq;
	struct device *dev = &pdev->dev;
	struct device_node *node = dev->of_node;
	struct resource *res;
	u16 id, bm_pool_cnt;
	u8 major, minor;

	__bman_probed = -1;

	res = FUNC13(pdev, IORESOURCE_MEM, 0);
	if (!res) {
		FUNC6(dev, "Can't get %pOF property 'IORESOURCE_MEM'\n",
			node);
		return -ENXIO;
	}
	bm_ccsr_start = FUNC9(dev, res->start, FUNC15(res));
	if (!bm_ccsr_start)
		return -ENXIO;

	FUNC3(&id, &major, &minor);
	if (major == 1 && minor == 0) {
		bman_ip_rev = BMAN_REV10;
		bm_pool_cnt = BM_POOL_MAX;
	} else if (major == 2 && minor == 0) {
		bman_ip_rev = BMAN_REV20;
		bm_pool_cnt = 8;
	} else if (major == 2 && minor == 1) {
		bman_ip_rev = BMAN_REV21;
		bm_pool_cnt = BM_POOL_MAX;
	} else {
		FUNC6(dev, "Unknown Bman version:%04x,%02x,%02x\n",
			id, major, minor);
		return -ENODEV;
	}

	/*
	 * If FBPR memory wasn't defined using the qbman compatible string
	 * try using the of_reserved_mem_device method
	 */
	if (!fbpr_a) {
		ret = FUNC14(dev, 0, &fbpr_a, &fbpr_sz);
		if (ret) {
			FUNC6(dev, "qbman_init_private_mem() failed 0x%x\n",
				ret);
			return -ENODEV;
		}
	}

	FUNC5(dev, "Allocated FBPR 0x%llx 0x%zx\n", fbpr_a, fbpr_sz);

	FUNC4(fbpr_a, fbpr_sz);

	err_irq = FUNC12(pdev, 0);
	if (err_irq <= 0) {
		FUNC7(dev, "Can't get %pOF IRQ\n", node);
		return -ENODEV;
	}
	ret = FUNC10(dev, err_irq, bman_isr, IRQF_SHARED, "bman-err",
			       dev);
	if (ret)  {
		FUNC6(dev, "devm_request_irq() failed %d for '%pOF'\n",
			ret, node);
		return ret;
	}
	/* Disable Buffer Pool State Change */
	FUNC2(REG_ERR_ISDR, BM_EIRQ_BSCN);
	/*
	 * Write-to-clear any stale bits, (eg. starvation being asserted prior
	 * to resource allocation during driver init).
	 */
	FUNC2(REG_ERR_ISR, 0xffffffff);
	/* Enable Error Interrupts */
	FUNC2(REG_ERR_IER, 0xffffffff);

	bm_bpalloc = FUNC8(dev, 0, -1, "bman-bpalloc");
	if (FUNC0(bm_bpalloc)) {
		ret = FUNC1(bm_bpalloc);
		FUNC6(dev, "bman-bpalloc pool init failed (%d)\n", ret);
		return ret;
	}

	/* seed BMan resource pool */
	ret = FUNC11(bm_bpalloc, DPAA_GENALLOC_OFF, bm_pool_cnt, -1);
	if (ret) {
		FUNC6(dev, "Failed to seed BPID range [%d..%d] (%d)\n",
			0, bm_pool_cnt - 1, ret);
		return ret;
	}

	__bman_probed = 1;

	return 0;
}