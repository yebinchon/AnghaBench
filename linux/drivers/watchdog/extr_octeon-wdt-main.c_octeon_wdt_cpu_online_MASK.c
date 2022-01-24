#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int mode; int /*<<< orphan*/  len; } ;
union cvmx_ciu_wdogx {int u64; TYPE_1__ s; } ;
typedef  scalar_t__ u64 ;
struct irq_domain {int dummy; } ;
typedef  int /*<<< orphan*/  cpumask_t ;
struct TYPE_4__ {scalar_t__ target_ptr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  IRQF_NO_THREAD ; 
 int /*<<< orphan*/  IRQ_TYPE_EDGE_RISING ; 
 int /*<<< orphan*/  OCTEON_FEATURE_CIU3 ; 
 unsigned int OCTEON_IRQ_WDOG0 ; 
 int WD_BLOCK_NUMBER ; 
 int /*<<< orphan*/  countdown_reset ; 
 unsigned int FUNC2 (unsigned int) ; 
 int FUNC3 (unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (unsigned int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int,int /*<<< orphan*/ ,int) ; 
 unsigned int FUNC7 (struct irq_domain*,int) ; 
 int /*<<< orphan*/  irq_enabled_cpus ; 
 int /*<<< orphan*/  FUNC8 (unsigned int) ; 
 int /*<<< orphan*/  FUNC9 (unsigned int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ) ; 
 struct irq_domain* FUNC12 (int,int) ; 
 TYPE_2__* octeon_wdt_bootvector ; 
 scalar_t__ octeon_wdt_nmi_stage2 ; 
 int /*<<< orphan*/  octeon_wdt_poke_irq ; 
 int /*<<< orphan*/  FUNC13 (char*,unsigned int) ; 
 int /*<<< orphan*/ * per_cpu_countdown ; 
 scalar_t__ FUNC14 (unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  timeout_cnt ; 

__attribute__((used)) static int FUNC15(unsigned int cpu)
{
	unsigned int core;
	unsigned int irq;
	union cvmx_ciu_wdogx ciu_wdog;
	int node;
	struct irq_domain *domain;
	int hwirq;

	core = FUNC2(cpu);
	node = FUNC3(cpu);

	octeon_wdt_bootvector[core].target_ptr = (u64)octeon_wdt_nmi_stage2;

	/* Disable it before doing anything with the interrupts. */
	ciu_wdog.u64 = 0;
	FUNC6(node, FUNC1(core), ciu_wdog.u64);

	per_cpu_countdown[cpu] = countdown_reset;

	if (FUNC11(OCTEON_FEATURE_CIU3)) {
		/* Must get the domain for the watchdog block */
		domain = FUNC12(node, WD_BLOCK_NUMBER);

		/* Get a irq for the wd intsn (hardware interrupt) */
		hwirq = WD_BLOCK_NUMBER << 12 | 0x200 | core;
		irq = FUNC7(domain, hwirq);
		FUNC10(FUNC8(irq),
				      IRQ_TYPE_EDGE_RISING);
	} else
		irq = OCTEON_IRQ_WDOG0 + core;

	if (FUNC14(irq, octeon_wdt_poke_irq,
			IRQF_NO_THREAD, "octeon_wdt", octeon_wdt_poke_irq))
		FUNC13("octeon_wdt: Couldn't obtain irq %d", irq);

	/* Must set the irq affinity here */
	if (FUNC11(OCTEON_FEATURE_CIU3)) {
		cpumask_t mask;

		FUNC4(&mask);
		FUNC5(cpu, &mask);
		FUNC9(irq, &mask);
	}

	FUNC5(cpu, &irq_enabled_cpus);

	/* Poke the watchdog to clear out its state */
	FUNC6(node, FUNC0(core), 1);

	/* Finally enable the watchdog now that all handlers are installed */
	ciu_wdog.u64 = 0;
	ciu_wdog.s.len = timeout_cnt;
	ciu_wdog.s.mode = 3;	/* 3 = Interrupt + NMI + Soft-Reset */
	FUNC6(node, FUNC1(core), ciu_wdog.u64);

	return 0;
}