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
struct qdio_q {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct qdio_q*,unsigned int,unsigned char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct qdio_q*) ; 
 int /*<<< orphan*/  FUNC2 (struct qdio_q*) ; 

int FUNC3(struct qdio_q *q, unsigned int bufnr,
			unsigned char *state)
{
	if (FUNC1(q))
		FUNC2(q);
	return FUNC0(q, bufnr, state, 0);
}