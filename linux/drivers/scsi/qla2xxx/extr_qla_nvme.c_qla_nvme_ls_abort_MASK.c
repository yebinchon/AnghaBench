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
struct nvmefc_ls_req {struct nvme_private* private; } ;
struct nvme_private {int /*<<< orphan*/  abort_work; int /*<<< orphan*/  cmd_lock; TYPE_1__* sp; } ;
struct nvme_fc_remote_port {int dummy; } ;
struct nvme_fc_local_port {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  cmd_kref; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  qla_nvme_abort_work ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC5(struct nvme_fc_local_port *lport,
    struct nvme_fc_remote_port *rport, struct nvmefc_ls_req *fd)
{
	struct nvme_private *priv = fd->private;
	unsigned long flags;

	FUNC3(&priv->cmd_lock, flags);
	if (!priv->sp) {
		FUNC4(&priv->cmd_lock, flags);
		return;
	}

	if (!FUNC1(&priv->sp->cmd_kref)) {
		FUNC4(&priv->cmd_lock, flags);
		return;
	}
	FUNC4(&priv->cmd_lock, flags);

	FUNC0(&priv->abort_work, qla_nvme_abort_work);
	FUNC2(&priv->abort_work);
}