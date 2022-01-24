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

/* Variables and functions */
 int DPAA_GENALLOC_OFF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int /*<<< orphan*/  qm_qpalloc ; 
 int FUNC2 (int) ; 

int FUNC3(u32 qp)
{
	int ret;

	ret = FUNC2(qp);
	if (ret) {
		FUNC1("CHID %d leaked\n", qp);
		return ret;
	}

	FUNC0(qm_qpalloc, qp | DPAA_GENALLOC_OFF, 1);
	return 0;
}