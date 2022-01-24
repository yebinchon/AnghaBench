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
typedef  int u32 ;
struct tcpm_port {int sink_request; unsigned int nr_src_pdo; int* src_pdo; int op_vsafe5v; } ;
typedef  enum pd_pdo_type { ____Placeholder_pd_pdo_type } pd_pdo_type ;

/* Variables and functions */
 int EINVAL ; 
#define  PDO_TYPE_BATT 130 
#define  PDO_TYPE_FIXED 129 
#define  PDO_TYPE_VAR 128 
 int RDO_CAP_MISMATCH ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 unsigned int FUNC1 (int) ; 
 unsigned int FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int FUNC5 (int) ; 
 unsigned int FUNC6 (int) ; 
 unsigned int FUNC7 (int) ; 
 unsigned int FUNC8 (int) ; 
 unsigned int FUNC9 (int) ; 
 unsigned int FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (struct tcpm_port*,char*,int /*<<< orphan*/ ,unsigned int,unsigned int,unsigned int,...) ; 

__attribute__((used)) static int FUNC12(struct tcpm_port *port)
{
	u32 pdo, rdo = port->sink_request;
	unsigned int max, op, pdo_max, index;
	enum pd_pdo_type type;

	index = FUNC6(rdo);
	if (!index || index > port->nr_src_pdo)
		return -EINVAL;

	pdo = port->src_pdo[index - 1];
	type = FUNC5(pdo);
	switch (type) {
	case PDO_TYPE_FIXED:
	case PDO_TYPE_VAR:
		max = FUNC7(rdo);
		op = FUNC9(rdo);
		pdo_max = FUNC1(pdo);

		if (op > pdo_max)
			return -EINVAL;
		if (max > pdo_max && !(rdo & RDO_CAP_MISMATCH))
			return -EINVAL;

		if (type == PDO_TYPE_FIXED)
			FUNC11(port,
				 "Requested %u mV, %u mA for %u / %u mA",
				 FUNC0(pdo), pdo_max, op, max);
		else
			FUNC11(port,
				 "Requested %u -> %u mV, %u mA for %u / %u mA",
				 FUNC4(pdo), FUNC3(pdo),
				 pdo_max, op, max);
		break;
	case PDO_TYPE_BATT:
		max = FUNC8(rdo);
		op = FUNC10(rdo);
		pdo_max = FUNC2(pdo);

		if (op > pdo_max)
			return -EINVAL;
		if (max > pdo_max && !(rdo & RDO_CAP_MISMATCH))
			return -EINVAL;
		FUNC11(port,
			 "Requested %u -> %u mV, %u mW for %u / %u mW",
			 FUNC4(pdo), FUNC3(pdo),
			 pdo_max, op, max);
		break;
	default:
		return -EINVAL;
	}

	port->op_vsafe5v = index == 1;

	return 0;
}