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
typedef  int /*<<< orphan*/  u16 ;
struct resource {int /*<<< orphan*/  start; } ;
struct device {struct device_node* of_node; } ;
struct platform_device {struct device dev; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENXIO ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 int /*<<< orphan*/  IRQF_SHARED ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  QMAN_CHANNEL_CAAM_REV3 ; 
 int /*<<< orphan*/  QMAN_CHANNEL_POOL1_REV3 ; 
 int QMAN_REV11 ; 
 int QMAN_REV12 ; 
 int QMAN_REV20 ; 
 int QMAN_REV30 ; 
 int QMAN_REV31 ; 
 int QMAN_REV32 ; 
 int /*<<< orphan*/  REG_ERR_IER ; 
 int /*<<< orphan*/  REG_ERR_ISR ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 int __qman_probed ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (struct device*,char*,struct device_node*) ; 
 int /*<<< orphan*/  FUNC6 (struct device*,int /*<<< orphan*/ ,int,char*) ; 
 int /*<<< orphan*/  FUNC7 (struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct device*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,struct device*) ; 
 scalar_t__ fqd_a ; 
 int /*<<< orphan*/  fqd_sz ; 
 scalar_t__ pfdr_a ; 
 int /*<<< orphan*/  pfdr_sz ; 
 int FUNC9 (struct platform_device*,int /*<<< orphan*/ ) ; 
 struct resource* FUNC10 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC11 (struct device*,int,scalar_t__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  qm_ccsr_start ; 
 int /*<<< orphan*/  qm_cgralloc ; 
 int /*<<< orphan*/  qm_channel_caam ; 
 int /*<<< orphan*/  qm_channel_pool1 ; 
 int /*<<< orphan*/  qm_fqalloc ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int*,int*) ; 
 int /*<<< orphan*/  qm_qpalloc ; 
 int FUNC15 (int /*<<< orphan*/ ) ; 
 int FUNC16 (struct device*) ; 
 int qman_ip_rev ; 
 int /*<<< orphan*/  qman_isr ; 
 int FUNC17 (struct device*) ; 
 int FUNC18 () ; 
 int /*<<< orphan*/  FUNC19 (struct resource*) ; 
 int /*<<< orphan*/  FUNC20 (scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC21(struct platform_device *pdev)
{
	struct device *dev = &pdev->dev;
	struct device_node *node = dev->of_node;
	struct resource *res;
	int ret, err_irq;
	u16 id;
	u8 major, minor;

	__qman_probed = -1;

	res = FUNC10(pdev, IORESOURCE_MEM, 0);
	if (!res) {
		FUNC4(dev, "Can't get %pOF property 'IORESOURCE_MEM'\n",
			node);
		return -ENXIO;
	}
	qm_ccsr_start = FUNC7(dev, res->start, FUNC19(res));
	if (!qm_ccsr_start)
		return -ENXIO;

	FUNC14(&id, &major, &minor);
	if (major == 1 && minor == 0) {
		FUNC4(dev, "Rev1.0 on P4080 rev1 is not supported!\n");
			return -ENODEV;
	} else if (major == 1 && minor == 1)
		qman_ip_rev = QMAN_REV11;
	else if	(major == 1 && minor == 2)
		qman_ip_rev = QMAN_REV12;
	else if (major == 2 && minor == 0)
		qman_ip_rev = QMAN_REV20;
	else if (major == 3 && minor == 0)
		qman_ip_rev = QMAN_REV30;
	else if (major == 3 && minor == 1)
		qman_ip_rev = QMAN_REV31;
	else if (major == 3 && minor == 2)
		qman_ip_rev = QMAN_REV32;
	else {
		FUNC4(dev, "Unknown QMan version\n");
		return -ENODEV;
	}

	if ((qman_ip_rev & 0xff00) >= QMAN_REV30) {
		qm_channel_pool1 = QMAN_CHANNEL_POOL1_REV3;
		qm_channel_caam = QMAN_CHANNEL_CAAM_REV3;
	}

	if (fqd_a) {
#ifdef CONFIG_PPC
		/*
		 * For PPC backward DT compatibility
		 * FQD memory MUST be zero'd by software
		 */
		zero_priv_mem(fqd_a, fqd_sz);
#else
		FUNC2(1, "Unexpected architecture using non shared-dma-mem reservations");
#endif
	} else {
		/*
		 * Order of memory regions is assumed as FQD followed by PFDR
		 * in order to ensure allocations from the correct regions the
		 * driver initializes then allocates each piece in order
		 */
		ret = FUNC11(dev, 0, &fqd_a, &fqd_sz);
		if (ret) {
			FUNC4(dev, "qbman_init_private_mem() for FQD failed 0x%x\n",
				ret);
			return -ENODEV;
		}
	}
	FUNC3(dev, "Allocated FQD 0x%llx 0x%zx\n", fqd_a, fqd_sz);

	if (!pfdr_a) {
		/* Setup PFDR memory */
		ret = FUNC11(dev, 1, &pfdr_a, &pfdr_sz);
		if (ret) {
			FUNC4(dev, "qbman_init_private_mem() for PFDR failed 0x%x\n",
				ret);
			return -ENODEV;
		}
	}
	FUNC3(dev, "Allocated PFDR 0x%llx 0x%zx\n", pfdr_a, pfdr_sz);

	ret = FUNC16(dev);
	if (ret) {
		FUNC4(dev, "CCSR setup failed\n");
		return ret;
	}

	err_irq = FUNC9(pdev, 0);
	if (err_irq <= 0) {
		FUNC5(dev, "Can't get %pOF property 'interrupts'\n",
			 node);
		return -ENODEV;
	}
	ret = FUNC8(dev, err_irq, qman_isr, IRQF_SHARED, "qman-err",
			       dev);
	if (ret)  {
		FUNC4(dev, "devm_request_irq() failed %d for '%pOF'\n",
			ret, node);
		return ret;
	}

	/*
	 * Write-to-clear any stale bits, (eg. starvation being asserted prior
	 * to resource allocation during driver init).
	 */
	FUNC12(REG_ERR_ISR, 0xffffffff);
	/* Enable Error Interrupts */
	FUNC12(REG_ERR_IER, 0xffffffff);

	qm_fqalloc = FUNC6(dev, 0, -1, "qman-fqalloc");
	if (FUNC0(qm_fqalloc)) {
		ret = FUNC1(qm_fqalloc);
		FUNC4(dev, "qman-fqalloc pool init failed (%d)\n", ret);
		return ret;
	}

	qm_qpalloc = FUNC6(dev, 0, -1, "qman-qpalloc");
	if (FUNC0(qm_qpalloc)) {
		ret = FUNC1(qm_qpalloc);
		FUNC4(dev, "qman-qpalloc pool init failed (%d)\n", ret);
		return ret;
	}

	qm_cgralloc = FUNC6(dev, 0, -1, "qman-cgralloc");
	if (FUNC0(qm_cgralloc)) {
		ret = FUNC1(qm_cgralloc);
		FUNC4(dev, "qman-cgralloc pool init failed (%d)\n", ret);
		return ret;
	}

	ret = FUNC17(dev);
	if (ret)
		return ret;

	ret = FUNC15(FUNC13());
	if (ret)
		return ret;

	ret = FUNC18();
	if (ret)
		return ret;

	__qman_probed = 1;

	return 0;
}