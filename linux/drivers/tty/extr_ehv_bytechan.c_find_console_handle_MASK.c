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
typedef  int /*<<< orphan*/  uint32_t ;
struct device_node {int dummy; } ;

/* Variables and functions */
 scalar_t__ NO_IRQ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const) ; 
 scalar_t__ FUNC1 (struct device_node*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct device_node*,char*) ; 
 int /*<<< orphan*/ * FUNC3 (struct device_node*,char*,int /*<<< orphan*/ *) ; 
 struct device_node* of_stdout ; 
 int /*<<< orphan*/  FUNC4 (char*,struct device_node*) ; 
 int /*<<< orphan*/  stdout_bc ; 
 scalar_t__ stdout_irq ; 

__attribute__((used)) static int FUNC5(void)
{
	struct device_node *np = of_stdout;
	const uint32_t *iprop;

	/* We don't care what the aliased node is actually called.  We only
	 * care if it's compatible with "epapr,hv-byte-channel", because that
	 * indicates that it's a byte channel node.
	 */
	if (!np || !FUNC2(np, "epapr,hv-byte-channel"))
		return 0;

	stdout_irq = FUNC1(np, 0);
	if (stdout_irq == NO_IRQ) {
		FUNC4("ehv-bc: no 'interrupts' property in %pOF node\n", np);
		return 0;
	}

	/*
	 * The 'hv-handle' property contains the handle for this byte channel.
	 */
	iprop = FUNC3(np, "hv-handle", NULL);
	if (!iprop) {
		FUNC4("ehv-bc: no 'hv-handle' property in %pOFn node\n",
		       np);
		return 0;
	}
	stdout_bc = FUNC0(*iprop);
	return 1;
}