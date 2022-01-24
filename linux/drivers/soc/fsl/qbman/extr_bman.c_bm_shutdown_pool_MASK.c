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
union bm_mc_result {int verb; } ;
typedef  int /*<<< orphan*/  u32 ;
struct bman_portal {int /*<<< orphan*/  p; } ;
struct bm_mc_command {int /*<<< orphan*/  bpid; } ;

/* Variables and functions */
 int BM_MCC_VERB_CMD_ACQUIRE ; 
 int BM_MCR_VERB_ACQUIRE_BUFCOUNT ; 
 int ETIMEDOUT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,union bm_mc_result**) ; 
 struct bm_mc_command* FUNC2 (int /*<<< orphan*/ *) ; 
 struct bman_portal* FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 () ; 

int FUNC6(u32 bpid)
{
	int err = 0;
	struct bm_mc_command *bm_cmd;
	union bm_mc_result *bm_res;


	struct bman_portal *p = FUNC3();
	while (1) {
		/* Acquire buffers until empty */
		bm_cmd = FUNC2(&p->p);
		bm_cmd->bpid = bpid;
		FUNC0(&p->p, BM_MCC_VERB_CMD_ACQUIRE | 1);
		if (!FUNC1(&p->p, &bm_res)) {
			FUNC4("BMan Acquire Command timedout\n");
			err = -ETIMEDOUT;
			goto done;
		}
		if (!(bm_res->verb & BM_MCR_VERB_ACQUIRE_BUFCOUNT)) {
			/* Pool is empty */
			goto done;
		}
	}
done:
	FUNC5();
	return 0;
}