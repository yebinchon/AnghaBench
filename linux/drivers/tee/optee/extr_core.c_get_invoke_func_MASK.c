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
struct device_node {int dummy; } ;
typedef  int /*<<< orphan*/  optee_invoke_fn ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  ENXIO ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct device_node*,char*,char const**) ; 
 int /*<<< orphan*/ * optee_smccc_hvc ; 
 int /*<<< orphan*/ * optee_smccc_smc ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 int /*<<< orphan*/  FUNC4 (char*,char const*) ; 

__attribute__((used)) static optee_invoke_fn *FUNC5(struct device_node *np)
{
	const char *method;

	FUNC2("probing for conduit method from DT.\n");

	if (FUNC1(np, "method", &method)) {
		FUNC3("missing \"method\" property\n");
		return FUNC0(-ENXIO);
	}

	if (!FUNC4("hvc", method))
		return optee_smccc_hvc;
	else if (!FUNC4("smc", method))
		return optee_smccc_smc;

	FUNC3("invalid \"method\" property: %s\n", method);
	return FUNC0(-EINVAL);
}