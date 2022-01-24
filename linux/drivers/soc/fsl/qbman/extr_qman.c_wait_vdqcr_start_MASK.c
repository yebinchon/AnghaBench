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
struct qman_portal {int dummy; } ;
struct qman_fq {int dummy; } ;

/* Variables and functions */
 int QMAN_VOLATILE_FLAG_WAIT_INT ; 
 int /*<<< orphan*/  affine_queue ; 
 int /*<<< orphan*/  FUNC0 (struct qman_portal**,struct qman_fq*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC3(struct qman_portal **p, struct qman_fq *fq,
				u32 vdqcr, u32 flags)
{
	int ret = 0;

	if (flags & QMAN_VOLATILE_FLAG_WAIT_INT)
		ret = FUNC2(affine_queue,
				!FUNC0(p, fq, vdqcr));
	else
		FUNC1(affine_queue, !FUNC0(p, fq, vdqcr));
	return ret;
}