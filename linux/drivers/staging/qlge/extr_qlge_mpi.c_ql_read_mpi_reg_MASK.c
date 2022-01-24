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
struct ql_adapter {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  PROC_ADDR ; 
 int /*<<< orphan*/  PROC_ADDR_ERR ; 
 int PROC_ADDR_R ; 
 int /*<<< orphan*/  PROC_ADDR_RDY ; 
 int /*<<< orphan*/  PROC_DATA ; 
 int FUNC0 (struct ql_adapter*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct ql_adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ql_adapter*,int /*<<< orphan*/ ,int) ; 

int FUNC3(struct ql_adapter *qdev, u32 reg, u32 *data)
{
	int status;
	/* wait for reg to come ready */
	status = FUNC1(qdev, PROC_ADDR, PROC_ADDR_RDY, PROC_ADDR_ERR);
	if (status)
		goto exit;
	/* set up for reg read */
	FUNC2(qdev, PROC_ADDR, reg | PROC_ADDR_R);
	/* wait for reg to come ready */
	status = FUNC1(qdev, PROC_ADDR, PROC_ADDR_RDY, PROC_ADDR_ERR);
	if (status)
		goto exit;
	/* get the data */
	*data = FUNC0(qdev, PROC_DATA);
exit:
	return status;
}