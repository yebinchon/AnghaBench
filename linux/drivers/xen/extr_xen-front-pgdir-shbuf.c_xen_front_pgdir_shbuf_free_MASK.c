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
struct xen_front_pgdir_shbuf {scalar_t__* grefs; int num_grefs; scalar_t__* directory; } ;

/* Variables and functions */
 scalar_t__ GRANT_INVALID_REF ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__*) ; 

void FUNC2(struct xen_front_pgdir_shbuf *buf)
{
	if (buf->grefs) {
		int i;

		for (i = 0; i < buf->num_grefs; i++)
			if (buf->grefs[i] != GRANT_INVALID_REF)
				FUNC0(buf->grefs[i],
							  0, 0UL);
	}
	FUNC1(buf->grefs);
	FUNC1(buf->directory);
}