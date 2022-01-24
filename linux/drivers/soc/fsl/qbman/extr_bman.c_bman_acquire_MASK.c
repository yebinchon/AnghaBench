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
union bm_mc_result {int verb; int /*<<< orphan*/ * bufs; } ;
typedef  int u8 ;
struct bman_portal {int /*<<< orphan*/  p; } ;
struct bman_pool {int /*<<< orphan*/  bpid; } ;
struct bm_mc_command {int /*<<< orphan*/  bpid; } ;
struct bm_buffer {int dummy; } ;
typedef  int /*<<< orphan*/  bufs ;

/* Variables and functions */
 int BM_MCC_VERB_ACQUIRE_BUFCOUNT ; 
 int BM_MCC_VERB_CMD_ACQUIRE ; 
 int BM_MCR_VERB_ACQUIRE_BUFCOUNT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ENOMEM ; 
 int ETIMEDOUT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,union bm_mc_result**) ; 
 struct bm_mc_command* FUNC3 (int /*<<< orphan*/ *) ; 
 struct bman_portal* FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (struct bm_buffer*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 () ; 

int FUNC8(struct bman_pool *pool, struct bm_buffer *bufs, u8 num)
{
	struct bman_portal *p = FUNC4();
	struct bm_mc_command *mcc;
	union bm_mc_result *mcr;
	int ret;

	FUNC0(num > 0 && num <= 8);

	mcc = FUNC3(&p->p);
	mcc->bpid = pool->bpid;
	FUNC1(&p->p, BM_MCC_VERB_CMD_ACQUIRE |
		     (num & BM_MCC_VERB_ACQUIRE_BUFCOUNT));
	if (!FUNC2(&p->p, &mcr)) {
		FUNC7();
		FUNC6("BMan Acquire Timeout\n");
		return -ETIMEDOUT;
	}
	ret = mcr->verb & BM_MCR_VERB_ACQUIRE_BUFCOUNT;
	if (bufs)
		FUNC5(&bufs[0], &mcr->bufs[0], num * sizeof(bufs[0]));

	FUNC7();
	if (ret != num)
		ret = -ENOMEM;
	return ret;
}