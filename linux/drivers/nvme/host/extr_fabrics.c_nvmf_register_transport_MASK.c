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
struct nvmf_transport_ops {int /*<<< orphan*/  entry; int /*<<< orphan*/  create_ctrl; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  nvmf_transports ; 
 int /*<<< orphan*/  nvmf_transports_rwsem ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

int FUNC3(struct nvmf_transport_ops *ops)
{
	if (!ops->create_ctrl)
		return -EINVAL;

	FUNC0(&nvmf_transports_rwsem);
	FUNC1(&ops->entry, &nvmf_transports);
	FUNC2(&nvmf_transports_rwsem);

	return 0;
}