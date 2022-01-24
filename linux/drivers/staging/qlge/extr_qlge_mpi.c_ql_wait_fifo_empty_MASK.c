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
 int ETIMEDOUT ; 
 int MB_GET_MPI_TFK_FIFO_EMPTY ; 
 int /*<<< orphan*/  STS ; 
 int STS_NFE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct ql_adapter*,int*) ; 
 int FUNC2 (struct ql_adapter*,int /*<<< orphan*/ ) ; 

int FUNC3(struct ql_adapter *qdev)
{
	int count = 5;
	u32 mgmnt_fifo_empty;
	u32 nic_fifo_empty;

	do {
		nic_fifo_empty = FUNC2(qdev, STS) & STS_NFE;
		FUNC1(qdev, &mgmnt_fifo_empty);
		mgmnt_fifo_empty &= MB_GET_MPI_TFK_FIFO_EMPTY;
		if (nic_fifo_empty && mgmnt_fifo_empty)
			return 0;
		FUNC0(100);
	} while (count-- > 0);
	return -ETIMEDOUT;
}