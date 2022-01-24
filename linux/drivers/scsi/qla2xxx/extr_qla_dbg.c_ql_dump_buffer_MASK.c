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
typedef  scalar_t__ uint ;
typedef  int /*<<< orphan*/  scsi_qla_host_t ;

/* Variables and functions */
 int /*<<< orphan*/  DUMP_PREFIX_NONE ; 
 int /*<<< orphan*/  KERN_CONT ; 
 int /*<<< orphan*/  FUNC0 (unsigned int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int,int,void const*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ *,scalar_t__,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 

void
FUNC4(uint level, scsi_qla_host_t *vha, uint id, const void *buf,
	       uint size)
{
	uint cnt;

	if (!FUNC3(level))
		return;

	FUNC2(level, vha, id,
	    "%-+5d  0  1  2  3  4  5  6  7  8  9  A  B  C  D  E  F\n", size);
	FUNC2(level, vha, id,
	    "----- -----------------------------------------------\n");
	for (cnt = 0; cnt < size; cnt += 16) {
		FUNC2(level, vha, id, "%04x: ", cnt);
		FUNC1(KERN_CONT, "", DUMP_PREFIX_NONE, 16, 1,
			       buf + cnt, FUNC0(16U, size - cnt), false);
	}
}