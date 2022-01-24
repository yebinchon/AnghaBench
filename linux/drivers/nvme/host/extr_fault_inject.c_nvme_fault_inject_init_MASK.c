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
struct fault_attr {int dummy; } ;
struct nvme_fault_inject {int dont_retry; int /*<<< orphan*/  status; struct dentry* parent; struct fault_attr attr; } ;
struct dentry {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct dentry*) ; 
 int /*<<< orphan*/  NVME_SC_INVALID_OPCODE ; 
 int /*<<< orphan*/  FUNC1 (char*,int,struct dentry*,int*) ; 
 struct dentry* FUNC2 (char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,struct dentry*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct dentry*) ; 
 struct fault_attr fail_default_attr ; 
 scalar_t__ fail_request ; 
 struct dentry* FUNC5 (char*,struct dentry*,struct fault_attr*) ; 
 int /*<<< orphan*/  FUNC6 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC7 (struct fault_attr*,scalar_t__) ; 

void FUNC8(struct nvme_fault_inject *fault_inj,
			    const char *dev_name)
{
	struct dentry *dir, *parent;
	struct fault_attr *attr = &fault_inj->attr;

	/* set default fault injection attribute */
	if (fail_request)
		FUNC7(&fail_default_attr, fail_request);

	/* create debugfs directory and attribute */
	parent = FUNC2(dev_name, NULL);
	if (!parent) {
		FUNC6("%s: failed to create debugfs directory\n", dev_name);
		return;
	}

	*attr = fail_default_attr;
	dir = FUNC5("fault_inject", parent, attr);
	if (FUNC0(dir)) {
		FUNC6("%s: failed to create debugfs attr\n", dev_name);
		FUNC4(parent);
		return;
	}
	fault_inj->parent = parent;

	/* create debugfs for status code and dont_retry */
	fault_inj->status = NVME_SC_INVALID_OPCODE;
	fault_inj->dont_retry = true;
	FUNC3("status", 0600, dir,	&fault_inj->status);
	FUNC1("dont_retry", 0600, dir, &fault_inj->dont_retry);
}