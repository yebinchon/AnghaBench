#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct nvme_private {int comp_status; int /*<<< orphan*/  ls_work; } ;
struct TYPE_3__ {int /*<<< orphan*/  cmd_kref; struct nvme_private* priv; } ;
typedef  TYPE_1__ srb_t ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  qla_nvme_ls_complete ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(srb_t *sp, int res)
{
	struct nvme_private *priv = sp->priv;

	if (FUNC1(FUNC2(&sp->cmd_kref) == 0))
		return;

	if (res)
		res = -EINVAL;

	priv->comp_status = res;
	FUNC0(&priv->ls_work, qla_nvme_ls_complete);
	FUNC3(&priv->ls_work);
}