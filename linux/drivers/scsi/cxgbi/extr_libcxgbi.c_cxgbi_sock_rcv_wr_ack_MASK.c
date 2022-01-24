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
struct sk_buff {unsigned int csum; } ;
struct cxgbi_sock {scalar_t__ wr_cred; scalar_t__ wr_una_cred; scalar_t__ wr_max_cred; unsigned int snd_una; int /*<<< orphan*/  lock; TYPE_1__* cdev; int /*<<< orphan*/  write_queue; int /*<<< orphan*/  dst; int /*<<< orphan*/  tid; int /*<<< orphan*/  flags; int /*<<< orphan*/  state; } ;
struct TYPE_2__ {scalar_t__ (* csk_push_tx_frames ) (struct cxgbi_sock*,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int CXGBI_DBG_SOCK ; 
 int CXGBI_DBG_TOE ; 
 int FUNC0 (unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (struct cxgbi_sock*) ; 
 int /*<<< orphan*/  FUNC2 (struct cxgbi_sock*) ; 
 int /*<<< orphan*/  FUNC3 (struct cxgbi_sock*) ; 
 struct sk_buff* FUNC4 (struct cxgbi_sock*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC7 (int,char*,struct cxgbi_sock*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,scalar_t__,scalar_t__,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC8 (char*,struct cxgbi_sock*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (char*,struct cxgbi_sock*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,unsigned int,...) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC13 (struct cxgbi_sock*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC14 (int) ; 

void FUNC15(struct cxgbi_sock *csk, unsigned int credits,
			   unsigned int snd_una, int seq_chk)
{
	FUNC7(1 << CXGBI_DBG_TOE | 1 << CXGBI_DBG_SOCK,
			"csk 0x%p,%u,0x%lx,%u, cr %u,%u+%u, snd_una %u,%d.\n",
			csk, csk->state, csk->flags, csk->tid, credits,
			csk->wr_cred, csk->wr_una_cred, snd_una, seq_chk);

	FUNC11(&csk->lock);

	csk->wr_cred += credits;
	if (csk->wr_una_cred > csk->wr_max_cred - csk->wr_cred)
		csk->wr_una_cred = csk->wr_max_cred - csk->wr_cred;

	while (credits) {
		struct sk_buff *p = FUNC4(csk);

		if (FUNC14(!p)) {
			FUNC8("csk 0x%p,%u,0x%lx,%u, cr %u,%u+%u, empty.\n",
				csk, csk->state, csk->flags, csk->tid, credits,
				csk->wr_cred, csk->wr_una_cred);
			break;
		}

		if (FUNC14(credits < p->csum)) {
			FUNC9("csk 0x%p,%u,0x%lx,%u, cr %u,%u+%u, < %u.\n",
				csk, csk->state, csk->flags, csk->tid,
				credits, csk->wr_cred, csk->wr_una_cred,
				p->csum);
			p->csum -= credits;
			break;
		} else {
			FUNC3(csk);
			credits -= p->csum;
			FUNC6(p);
		}
	}

	FUNC2(csk);

	if (seq_chk) {
		if (FUNC14(FUNC0(snd_una, csk->snd_una))) {
			FUNC9("csk 0x%p,%u,0x%lx,%u, snd_una %u/%u.",
				csk, csk->state, csk->flags, csk->tid, snd_una,
				csk->snd_una);
			goto done;
		}

		if (csk->snd_una != snd_una) {
			csk->snd_una = snd_una;
			FUNC5(csk->dst);
		}
	}

	if (FUNC10(&csk->write_queue)) {
		if (csk->cdev->csk_push_tx_frames(csk, 0))
			FUNC1(csk);
	} else
		FUNC1(csk);
done:
	FUNC12(&csk->lock);
}