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
struct nvmf_transport_ops {int required_opts; int allowed_opts; int /*<<< orphan*/  module; struct nvme_ctrl* (* create_ctrl ) (struct device*,struct nvmf_ctrl_options*) ;} ;
struct nvmf_ctrl_options {int mask; int /*<<< orphan*/  transport; } ;
struct nvme_ctrl {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int EBUSY ; 
 int EINVAL ; 
 int ENOMEM ; 
 struct nvme_ctrl* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC1 (struct nvme_ctrl*) ; 
 int NVMF_ALLOWED_OPTS ; 
 int NVMF_REQUIRED_OPTS ; 
 int FUNC2 (struct nvme_ctrl*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct nvmf_ctrl_options* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (struct nvmf_ctrl_options*,int) ; 
 int FUNC7 (struct nvmf_ctrl_options*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct nvmf_ctrl_options*) ; 
 struct nvmf_transport_ops* FUNC9 (struct nvmf_ctrl_options*) ; 
 int FUNC10 (struct nvmf_ctrl_options*,char const*) ; 
 int /*<<< orphan*/  nvmf_transports_rwsem ; 
 int /*<<< orphan*/  FUNC11 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (char*,int /*<<< orphan*/ ) ; 
 struct nvme_ctrl* FUNC13 (struct device*,struct nvmf_ctrl_options*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct nvme_ctrl *
FUNC16(struct device *dev, const char *buf)
{
	struct nvmf_ctrl_options *opts;
	struct nvmf_transport_ops *ops;
	struct nvme_ctrl *ctrl;
	int ret;

	opts = FUNC4(sizeof(*opts), GFP_KERNEL);
	if (!opts)
		return FUNC0(-ENOMEM);

	ret = FUNC10(opts, buf);
	if (ret)
		goto out_free_opts;


	FUNC12("nvme-%s", opts->transport);

	/*
	 * Check the generic options first as we need a valid transport for
	 * the lookup below.  Then clear the generic flags so that transport
	 * drivers don't have to care about them.
	 */
	ret = FUNC7(opts, NVMF_REQUIRED_OPTS);
	if (ret)
		goto out_free_opts;
	opts->mask &= ~NVMF_REQUIRED_OPTS;

	FUNC3(&nvmf_transports_rwsem);
	ops = FUNC9(opts);
	if (!ops) {
		FUNC11("no handler found for transport %s.\n",
			opts->transport);
		ret = -EINVAL;
		goto out_unlock;
	}

	if (!FUNC14(ops->module)) {
		ret = -EBUSY;
		goto out_unlock;
	}
	FUNC15(&nvmf_transports_rwsem);

	ret = FUNC7(opts, ops->required_opts);
	if (ret)
		goto out_module_put;
	ret = FUNC6(opts, NVMF_ALLOWED_OPTS |
				ops->allowed_opts | ops->required_opts);
	if (ret)
		goto out_module_put;

	ctrl = ops->create_ctrl(dev, opts);
	if (FUNC1(ctrl)) {
		ret = FUNC2(ctrl);
		goto out_module_put;
	}

	FUNC5(ops->module);
	return ctrl;

out_module_put:
	FUNC5(ops->module);
	goto out_free_opts;
out_unlock:
	FUNC15(&nvmf_transports_rwsem);
out_free_opts:
	FUNC8(opts);
	return FUNC0(ret);
}