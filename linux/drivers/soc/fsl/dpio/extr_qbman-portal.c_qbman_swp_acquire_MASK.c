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
typedef  int /*<<< orphan*/  u64 ;
typedef  int /*<<< orphan*/  u16 ;
struct qbman_swp {int dummy; } ;
struct qbman_acquire_rslt {int verb; scalar_t__ rslt; unsigned int num; int /*<<< orphan*/ * buf; } ;
struct qbman_acquire_desc {unsigned int num; int /*<<< orphan*/  bpid; } ;

/* Variables and functions */
 int EBUSY ; 
 int EINVAL ; 
 int EIO ; 
 int QBMAN_MC_ACQUIRE ; 
 scalar_t__ QBMAN_MC_RSLT_OK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,...) ; 
 struct qbman_acquire_rslt* FUNC4 (struct qbman_swp*,struct qbman_acquire_desc*,int) ; 
 struct qbman_acquire_desc* FUNC5 (struct qbman_swp*) ; 
 scalar_t__ FUNC6 (int) ; 

int FUNC7(struct qbman_swp *s, u16 bpid, u64 *buffers,
		      unsigned int num_buffers)
{
	struct qbman_acquire_desc *p;
	struct qbman_acquire_rslt *r;
	int i;

	if (!num_buffers || (num_buffers > 7))
		return -EINVAL;

	/* Start the management command */
	p = FUNC5(s);

	if (!p)
		return -EBUSY;

	/* Encode the caller-provided attributes */
	p->bpid = FUNC1(bpid);
	p->num = num_buffers;

	/* Complete the management command */
	r = FUNC4(s, p, QBMAN_MC_ACQUIRE);
	if (FUNC6(!r)) {
		FUNC3("qbman: acquire from BPID %d failed, no response\n",
		       bpid);
		return -EIO;
	}

	/* Decode the outcome */
	FUNC0((r->verb & 0x7f) != QBMAN_MC_ACQUIRE);

	/* Determine success or failure */
	if (FUNC6(r->rslt != QBMAN_MC_RSLT_OK)) {
		FUNC3("qbman: acquire from BPID 0x%x failed, code=0x%02x\n",
		       bpid, r->rslt);
		return -EIO;
	}

	FUNC0(r->num > num_buffers);

	/* Copy the acquired buffers to the caller's array */
	for (i = 0; i < r->num; i++)
		buffers[i] = FUNC2(r->buf[i]);

	return (int)r->num;
}