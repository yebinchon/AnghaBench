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
typedef  int u32 ;
struct of_phandle_args {int args_count; int /*<<< orphan*/ * args; struct device_node* np; } ;
struct device_node {int dummy; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int EINVAL ; 
 int OF_IMAP_OLDWORLD_MAC ; 
 int /*<<< orphan*/ * FUNC0 (struct device_node*,char*,int /*<<< orphan*/ *) ; 
 struct device_node* FUNC1 (struct device_node*) ; 
 int FUNC2 (struct device_node*,int,struct of_phandle_args*) ; 
 int FUNC3 (int /*<<< orphan*/  const*,struct of_phandle_args*) ; 
 int of_irq_workarounds ; 
 int /*<<< orphan*/  FUNC4 (struct device_node*) ; 
 int FUNC5 (struct device_node*,char*,char*,int,struct of_phandle_args*) ; 
 scalar_t__ FUNC6 (struct device_node*,char*,int*) ; 
 int FUNC7 (struct device_node*,char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ ,...) ; 

int FUNC9(struct device_node *device, int index, struct of_phandle_args *out_irq)
{
	struct device_node *p;
	const __be32 *addr;
	u32 intsize;
	int i, res;

	FUNC8("of_irq_parse_one: dev=%pOF, index=%d\n", device, index);

	/* OldWorld mac stuff is "special", handle out of line */
	if (of_irq_workarounds & OF_IMAP_OLDWORLD_MAC)
		return FUNC2(device, index, out_irq);

	/* Get the reg property (if any) */
	addr = FUNC0(device, "reg", NULL);

	/* Try the new-style interrupts-extended first */
	res = FUNC5(device, "interrupts-extended",
					"#interrupt-cells", index, out_irq);
	if (!res)
		return FUNC3(addr, out_irq);

	/* Look for the interrupt parent. */
	p = FUNC1(device);
	if (p == NULL)
		return -EINVAL;

	/* Get size of interrupt specifier */
	if (FUNC6(p, "#interrupt-cells", &intsize)) {
		res = -EINVAL;
		goto out;
	}

	FUNC8(" parent=%pOF, intsize=%d\n", p, intsize);

	/* Copy intspec into irq structure */
	out_irq->np = p;
	out_irq->args_count = intsize;
	for (i = 0; i < intsize; i++) {
		res = FUNC7(device, "interrupts",
						 (index * intsize) + i,
						 out_irq->args + i);
		if (res)
			goto out;
	}

	FUNC8(" intspec=%d\n", *out_irq->args);


	/* Check if there are any interrupt-map translations to process */
	res = FUNC3(addr, out_irq);
 out:
	FUNC4(p);
	return res;
}