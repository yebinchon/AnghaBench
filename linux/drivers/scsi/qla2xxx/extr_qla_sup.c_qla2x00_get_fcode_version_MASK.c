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
typedef  char uint8_t ;
typedef  scalar_t__ uint32_t ;
struct qla_hw_data {char* fcode_revision; } ;

/* Variables and functions */
 int QLA_FUNCTION_FAILED ; 
 int QLA_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int) ; 
 char FUNC1 (struct qla_hw_data*,scalar_t__) ; 

__attribute__((used)) static void
FUNC2(struct qla_hw_data *ha, uint32_t pcids)
{
	int ret = QLA_FUNCTION_FAILED;
	uint32_t istart, iend, iter, vend;
	uint8_t do_next, rbyte, *vbyte;

	FUNC0(ha->fcode_revision, 0, sizeof(ha->fcode_revision));

	/* Skip the PCI data structure. */
	istart = pcids +
	    ((FUNC1(ha, pcids + 0x0B) << 8) |
		FUNC1(ha, pcids + 0x0A));
	iend = istart + 0x100;
	do {
		/* Scan for the sentinel date string...eeewww. */
		do_next = 0;
		iter = istart;
		while ((iter < iend) && !do_next) {
			iter++;
			if (FUNC1(ha, iter) == '/') {
				if (FUNC1(ha, iter + 2) ==
				    '/')
					do_next++;
				else if (FUNC1(ha,
				    iter + 3) == '/')
					do_next++;
			}
		}
		if (!do_next)
			break;

		/* Backtrack to previous ' ' (space). */
		do_next = 0;
		while ((iter > istart) && !do_next) {
			iter--;
			if (FUNC1(ha, iter) == ' ')
				do_next++;
		}
		if (!do_next)
			break;

		/*
		 * Mark end of version tag, and find previous ' ' (space) or
		 * string length (recent FCODE images -- major hack ahead!!!).
		 */
		vend = iter - 1;
		do_next = 0;
		while ((iter > istart) && !do_next) {
			iter--;
			rbyte = FUNC1(ha, iter);
			if (rbyte == ' ' || rbyte == 0xd || rbyte == 0x10)
				do_next++;
		}
		if (!do_next)
			break;

		/* Mark beginning of version tag, and copy data. */
		iter++;
		if ((vend - iter) &&
		    ((vend - iter) < sizeof(ha->fcode_revision))) {
			vbyte = ha->fcode_revision;
			while (iter <= vend) {
				*vbyte++ = FUNC1(ha, iter);
				iter++;
			}
			ret = QLA_SUCCESS;
		}
	} while (0);

	if (ret != QLA_SUCCESS)
		FUNC0(ha->fcode_revision, 0, sizeof(ha->fcode_revision));
}