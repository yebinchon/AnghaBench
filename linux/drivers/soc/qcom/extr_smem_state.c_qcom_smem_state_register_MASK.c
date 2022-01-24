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
struct qcom_smem_state_ops {int dummy; } ;
struct qcom_smem_state {int /*<<< orphan*/  list; void* priv; struct qcom_smem_state_ops ops; struct device_node* of_node; int /*<<< orphan*/  refcount; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 struct qcom_smem_state* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct qcom_smem_state* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  list_lock ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  smem_states ; 

struct qcom_smem_state *FUNC6(struct device_node *of_node,
						 const struct qcom_smem_state_ops *ops,
						 void *priv)
{
	struct qcom_smem_state *state;

	state = FUNC2(sizeof(*state), GFP_KERNEL);
	if (!state)
		return FUNC0(-ENOMEM);

	FUNC1(&state->refcount);

	state->of_node = of_node;
	state->ops = *ops;
	state->priv = priv;

	FUNC4(&list_lock);
	FUNC3(&state->list, &smem_states);
	FUNC5(&list_lock);

	return state;
}