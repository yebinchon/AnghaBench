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
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 int /*<<< orphan*/  qm_cgralloc ; 

int FUNC3(u32 cgrid)
{
	int ret;

	ret = FUNC0(cgrid);
	if (ret) {
		FUNC2("CGRID %d leaked\n", cgrid);
		return ret;
	}

	FUNC1(qm_cgralloc, cgrid | DPAA_GENALLOC_OFF, 1);
	return 0;
}