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
struct TYPE_2__ {int /*<<< orphan*/  release; int /*<<< orphan*/  machine; int /*<<< orphan*/  sysname; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  QLA2XXX_VERSION ; 
 int /*<<< orphan*/  WQ_MEM_RECLAIM ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  tcm_qla2xxx_free_wq ; 
 int /*<<< orphan*/  tcm_qla2xxx_npiv_ops ; 
 int /*<<< orphan*/  tcm_qla2xxx_ops ; 
 TYPE_1__* FUNC4 () ; 

__attribute__((used)) static int FUNC5(void)
{
	int ret;

	FUNC1("TCM QLOGIC QLA2XXX fabric module %s on %s/%s on %s\n",
	    QLA2XXX_VERSION, FUNC4()->sysname,
	    FUNC4()->machine, FUNC4()->release);

	ret = FUNC2(&tcm_qla2xxx_ops);
	if (ret)
		return ret;

	ret = FUNC2(&tcm_qla2xxx_npiv_ops);
	if (ret)
		goto out_fabric;

	tcm_qla2xxx_free_wq = FUNC0("tcm_qla2xxx_free",
						WQ_MEM_RECLAIM, 0);
	if (!tcm_qla2xxx_free_wq) {
		ret = -ENOMEM;
		goto out_fabric_npiv;
	}

	return 0;

out_fabric_npiv:
	FUNC3(&tcm_qla2xxx_npiv_ops);
out_fabric:
	FUNC3(&tcm_qla2xxx_ops);
	return ret;
}