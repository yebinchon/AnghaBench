#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  ci; int /*<<< orphan*/  ce_be; int /*<<< orphan*/  ce; } ;
struct bm_portal {TYPE_1__ addr; } ;
struct bman_portal {struct bm_portal_config const* config; int /*<<< orphan*/  irqname; scalar_t__ irq_sources; struct bm_portal p; } ;
struct bm_portal_config {int /*<<< orphan*/  irq; int /*<<< orphan*/  dev; int /*<<< orphan*/  cpu; int /*<<< orphan*/  addr_virt_ci; int /*<<< orphan*/  addr_virt_ce; } ;

/* Variables and functions */
 int /*<<< orphan*/  BM_REG_IER ; 
 int /*<<< orphan*/  BM_REG_IIR ; 
 int /*<<< orphan*/  BM_REG_ISDR ; 
 int /*<<< orphan*/  BM_REG_ISR ; 
 int EIO ; 
 char* IRQNAME ; 
 int /*<<< orphan*/  MAX_IRQNAME ; 
 int /*<<< orphan*/  FUNC0 (struct bm_portal*) ; 
 int /*<<< orphan*/  FUNC1 (struct bm_portal*) ; 
 scalar_t__ FUNC2 (struct bm_portal*) ; 
 int /*<<< orphan*/  FUNC3 (struct bm_portal*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  bm_rcr_cce ; 
 int /*<<< orphan*/  FUNC4 (struct bm_portal*) ; 
 int FUNC5 (struct bm_portal*) ; 
 scalar_t__ FUNC6 (struct bm_portal*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  bm_rcr_pvb ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,struct bman_portal*) ; 
 int /*<<< orphan*/  portal_isr ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct bman_portal*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC12(struct bman_portal *portal,
			      const struct bm_portal_config *c)
{
	struct bm_portal *p;
	int ret;

	p = &portal->p;
	/*
	 * prep the low-level portal struct with the mapped addresses from the
	 * config, everything that follows depends on it and "config" is more
	 * for (de)reference...
	 */
	p->addr.ce = c->addr_virt_ce;
	p->addr.ce_be = c->addr_virt_ce;
	p->addr.ci = c->addr_virt_ci;
	if (FUNC6(p, bm_rcr_pvb, bm_rcr_cce)) {
		FUNC7(c->dev, "RCR initialisation failed\n");
		goto fail_rcr;
	}
	if (FUNC2(p)) {
		FUNC7(c->dev, "MC initialisation failed\n");
		goto fail_mc;
	}
	/*
	 * Default to all BPIDs disabled, we enable as required at
	 * run-time.
	 */
	FUNC0(p);

	/* Write-to-clear any stale interrupt status bits */
	FUNC3(p, BM_REG_ISDR, 0xffffffff);
	portal->irq_sources = 0;
	FUNC3(p, BM_REG_IER, 0);
	FUNC3(p, BM_REG_ISR, 0xffffffff);
	FUNC11(portal->irqname, MAX_IRQNAME, IRQNAME, c->cpu);
	if (FUNC10(c->irq, portal_isr, 0, portal->irqname,	portal)) {
		FUNC7(c->dev, "request_irq() failed\n");
		goto fail_irq;
	}

	if (FUNC8(c->dev, c->irq, c->cpu))
		goto fail_affinity;

	/* Need RCR to be empty before continuing */
	ret = FUNC5(p);
	if (ret) {
		FUNC7(c->dev, "RCR unclean\n");
		goto fail_rcr_empty;
	}
	/* Success */
	portal->config = c;

	FUNC3(p, BM_REG_ISDR, 0);
	FUNC3(p, BM_REG_IIR, 0);

	return 0;

fail_rcr_empty:
fail_affinity:
	FUNC9(c->irq, portal);
fail_irq:
	FUNC1(p);
fail_mc:
	FUNC4(p);
fail_rcr:
	return -EIO;
}