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
struct qcom_smem_state {int dummy; } ;
struct of_phandle_args {int args_count; unsigned int* args; int /*<<< orphan*/  np; } ;
struct device {int /*<<< orphan*/  of_node; } ;

/* Variables and functions */
 int EINVAL ; 
 struct qcom_smem_state* FUNC0 (int) ; 
 scalar_t__ FUNC1 (struct qcom_smem_state*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 struct qcom_smem_state* FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,char*,char*,int,struct of_phandle_args*) ; 
 int FUNC6 (int /*<<< orphan*/ ,char*,char const*) ; 

struct qcom_smem_state *FUNC7(struct device *dev,
					    const char *con_id,
					    unsigned *bit)
{
	struct qcom_smem_state *state;
	struct of_phandle_args args;
	int index = 0;
	int ret;

	if (con_id) {
		index = FUNC6(dev->of_node,
						 "qcom,smem-state-names",
						 con_id);
		if (index < 0) {
			FUNC2(dev, "missing qcom,smem-state-names\n");
			return FUNC0(index);
		}
	}

	ret = FUNC5(dev->of_node,
					 "qcom,smem-states",
					 "#qcom,smem-state-cells",
					 index,
					 &args);
	if (ret) {
		FUNC2(dev, "failed to parse qcom,smem-states property\n");
		return FUNC0(ret);
	}

	if (args.args_count != 1) {
		FUNC2(dev, "invalid #qcom,smem-state-cells\n");
		return FUNC0(-EINVAL);
	}

	state = FUNC4(args.np);
	if (FUNC1(state))
		goto put;

	*bit = args.args[0];

put:
	FUNC3(args.np);
	return state;
}