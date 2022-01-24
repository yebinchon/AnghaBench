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
struct ql_reg_dump {int dummy; } ;
struct ql_mpi_coredump {int dummy; } ;
struct ql_adapter {int /*<<< orphan*/  flags; scalar_t__ core_is_dumped; } ;
struct net_device {int dummy; } ;
struct ethtool_regs {int len; } ;

/* Variables and functions */
 int /*<<< orphan*/  QL_FRC_COREDUMP ; 
 struct ql_adapter* FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct ql_adapter*,void*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct net_device *ndev,
			struct ethtool_regs *regs, void *p)
{
	struct ql_adapter *qdev = FUNC0(ndev);

	FUNC1(qdev, p);
	qdev->core_is_dumped = 0;
	if (!FUNC2(QL_FRC_COREDUMP, &qdev->flags))
		regs->len = sizeof(struct ql_mpi_coredump);
	else
		regs->len = sizeof(struct ql_reg_dump);
}