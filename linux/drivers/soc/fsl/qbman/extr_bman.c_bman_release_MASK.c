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
typedef  int u8 ;
struct bman_portal {int /*<<< orphan*/  p; } ;
struct bman_pool {int /*<<< orphan*/  bpid; } ;
struct bm_rcr_entry {int /*<<< orphan*/ * bufs; } ;
struct bm_buffer {int dummy; } ;
typedef  int /*<<< orphan*/  bufs ;

/* Variables and functions */
 int BM_RCR_VERB_BUFCOUNT_MASK ; 
 int BM_RCR_VERB_CMD_BPID_SINGLE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ETIMEDOUT ; 
 int /*<<< orphan*/  FUNC1 (struct bm_buffer const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 struct bm_rcr_entry* FUNC6 (int /*<<< orphan*/ *) ; 
 struct bman_portal* FUNC7 () ; 
 scalar_t__ FUNC8 (struct bm_rcr_entry*) ; 
 int /*<<< orphan*/  FUNC9 (unsigned long) ; 
 int /*<<< orphan*/  FUNC10 (unsigned long) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,struct bm_buffer const*,int) ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (int) ; 
 scalar_t__ FUNC14 (int) ; 
 int /*<<< orphan*/  FUNC15 (struct bman_portal*,int) ; 

int FUNC16(struct bman_pool *pool, const struct bm_buffer *bufs, u8 num)
{
	struct bman_portal *p;
	struct bm_rcr_entry *r;
	unsigned long irqflags;
	int avail, timeout = 1000; /* 1ms */
	int i = num - 1;

	FUNC0(num > 0 && num <= 8);

	do {
		p = FUNC7();
		FUNC10(irqflags);
		avail = FUNC4(&p->p);
		if (avail < 2)
			FUNC15(p, avail);
		r = FUNC6(&p->p);
		FUNC9(irqflags);
		FUNC12();
		if (FUNC8(r))
			break;

		FUNC13(1);
	} while (--timeout);

	if (FUNC14(!timeout))
		return -ETIMEDOUT;

	p = FUNC7();
	FUNC10(irqflags);
	/*
	 * we can copy all but the first entry, as this can trigger badness
	 * with the valid-bit
	 */
	FUNC2(r->bufs, FUNC1(bufs));
	FUNC3(r->bufs, pool->bpid);
	if (i)
		FUNC11(&r->bufs[1], &bufs[1], i * sizeof(bufs[0]));

	FUNC5(&p->p, BM_RCR_VERB_CMD_BPID_SINGLE |
			  (num & BM_RCR_VERB_BUFCOUNT_MASK));

	FUNC9(irqflags);
	FUNC12();
	return 0;
}