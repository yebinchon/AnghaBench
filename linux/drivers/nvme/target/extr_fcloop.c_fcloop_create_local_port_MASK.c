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
struct nvme_fc_port_info {int /*<<< orphan*/  port_id; int /*<<< orphan*/  port_role; int /*<<< orphan*/  port_name; int /*<<< orphan*/  node_name; } ;
struct nvme_fc_local_port {struct fcloop_lport_priv* private; } ;
struct fcloop_lport_priv {struct fcloop_lport* lport; } ;
struct fcloop_lport {int mask; int /*<<< orphan*/  lport_list; struct nvme_fc_local_port* localport; int /*<<< orphan*/  fcaddr; int /*<<< orphan*/  roles; int /*<<< orphan*/  wwpn; int /*<<< orphan*/  wwnn; } ;
struct fcloop_ctrl_options {int mask; int /*<<< orphan*/  lport_list; struct nvme_fc_local_port* localport; int /*<<< orphan*/  fcaddr; int /*<<< orphan*/  roles; int /*<<< orphan*/  wwpn; int /*<<< orphan*/  wwnn; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;
typedef  int /*<<< orphan*/  pinfo ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int LPORT_OPTS ; 
 int /*<<< orphan*/  fcloop_lock ; 
 int /*<<< orphan*/  fcloop_lports ; 
 int FUNC1 (struct fcloop_lport*,char const*) ; 
 int /*<<< orphan*/  fctemplate ; 
 int /*<<< orphan*/  FUNC2 (struct fcloop_lport*) ; 
 struct fcloop_lport* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct nvme_fc_port_info*,int /*<<< orphan*/ ,int) ; 
 int FUNC6 (struct nvme_fc_port_info*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct nvme_fc_local_port**) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static ssize_t
FUNC9(struct device *dev, struct device_attribute *attr,
		const char *buf, size_t count)
{
	struct nvme_fc_port_info pinfo;
	struct fcloop_ctrl_options *opts;
	struct nvme_fc_local_port *localport;
	struct fcloop_lport *lport;
	struct fcloop_lport_priv *lport_priv;
	unsigned long flags;
	int ret = -ENOMEM;

	lport = FUNC3(sizeof(*lport), GFP_KERNEL);
	if (!lport)
		return -ENOMEM;

	opts = FUNC3(sizeof(*opts), GFP_KERNEL);
	if (!opts)
		goto out_free_lport;

	ret = FUNC1(opts, buf);
	if (ret)
		goto out_free_opts;

	/* everything there ? */
	if ((opts->mask & LPORT_OPTS) != LPORT_OPTS) {
		ret = -EINVAL;
		goto out_free_opts;
	}

	FUNC5(&pinfo, 0, sizeof(pinfo));
	pinfo.node_name = opts->wwnn;
	pinfo.port_name = opts->wwpn;
	pinfo.port_role = opts->roles;
	pinfo.port_id = opts->fcaddr;

	ret = FUNC6(&pinfo, &fctemplate, NULL, &localport);
	if (!ret) {
		/* success */
		lport_priv = localport->private;
		lport_priv->lport = lport;

		lport->localport = localport;
		FUNC0(&lport->lport_list);

		FUNC7(&fcloop_lock, flags);
		FUNC4(&lport->lport_list, &fcloop_lports);
		FUNC8(&fcloop_lock, flags);
	}

out_free_opts:
	FUNC2(opts);
out_free_lport:
	/* free only if we're going to fail */
	if (ret)
		FUNC2(lport);

	return ret ? ret : count;
}