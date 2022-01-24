#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u64 ;
typedef  int /*<<< orphan*/  u32 ;
struct qbman_swp {TYPE_1__* desc; } ;
struct qbman_release_desc {unsigned int verb; int /*<<< orphan*/  bpid; int /*<<< orphan*/ * buf; } ;
struct TYPE_2__ {int qman_version; } ;

/* Variables and functions */
 int EBUSY ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  QBMAN_CINH_SWP_RAR ; 
 scalar_t__ QBMAN_CINH_SWP_RCR_AM_RT ; 
 int QMAN_REV_5000 ; 
 int QMAN_REV_MASK ; 
 int /*<<< orphan*/  QMAN_RT_MODE ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 struct qbman_release_desc* FUNC7 (struct qbman_swp*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct qbman_swp*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct qbman_swp*,scalar_t__,int /*<<< orphan*/ ) ; 

int FUNC10(struct qbman_swp *s, const struct qbman_release_desc *d,
		      const u64 *buffers, unsigned int num_buffers)
{
	int i;
	struct qbman_release_desc *p;
	u32 rar;

	if (!num_buffers || (num_buffers > 7))
		return -EINVAL;

	rar = FUNC8(s, QBMAN_CINH_SWP_RAR);
	if (!FUNC3(rar))
		return -EBUSY;

	/* Start the release command */
	if ((s->desc->qman_version & QMAN_REV_MASK) < QMAN_REV_5000)
		p = FUNC7(s, FUNC0(FUNC2(rar)));
	else
		p = FUNC7(s, FUNC1(FUNC2(rar)));
	/* Copy the caller's buffer pointers to the command */
	for (i = 0; i < num_buffers; i++)
		p->buf[i] = FUNC5(buffers[i]);
	p->bpid = d->bpid;

	if ((s->desc->qman_version & QMAN_REV_MASK) < QMAN_REV_5000) {
		/*
		 * Set the verb byte, have to substitute in the valid-bit
		 * and the number of buffers.
		 */
		FUNC6();
		p->verb = d->verb | FUNC4(rar) | num_buffers;
	} else {
		p->verb = d->verb | FUNC4(rar) | num_buffers;
		FUNC6();
		FUNC9(s, QBMAN_CINH_SWP_RCR_AM_RT +
				     FUNC2(rar)  * 4, QMAN_RT_MODE);
	}

	return 0;
}