#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {TYPE_1__* spidev; } ;
struct st95_digital_cmd_complete_arg {int rats; int /*<<< orphan*/  cb_usrarg; int /*<<< orphan*/  (* complete_cb ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct sk_buff*) ;struct sk_buff* skb_resp; } ;
struct st95hf_context {int /*<<< orphan*/  rm_lock; int /*<<< orphan*/  exchange_lock; int /*<<< orphan*/  ddev; scalar_t__ nfcdev_free; TYPE_2__ spicontext; struct st95_digital_cmd_complete_arg complete_cb_arg; } ;
struct sk_buff {scalar_t__* data; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_3__ {struct device dev; } ;

/* Variables and functions */
 int ENODEV ; 
 struct sk_buff* FUNC0 (int) ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 scalar_t__ WTX_REQ_FROM_TAG ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (struct st95hf_context*,struct sk_buff*,int) ; 
 int FUNC8 (struct st95hf_context*,int,scalar_t__) ; 
 int FUNC9 (struct st95hf_context*,struct sk_buff*,int) ; 
 int FUNC10 (TYPE_2__*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static irqreturn_t FUNC14(int irq, void  *st95hfcontext)
{
	int result = 0;
	int res_len;
	static bool wtx;
	struct device *spidevice;
	struct sk_buff *skb_resp;
	struct st95hf_context *stcontext  =
		(struct st95hf_context *)st95hfcontext;
	struct st95_digital_cmd_complete_arg *cb_arg;

	spidevice = &stcontext->spicontext.spidev->dev;

	/*
	 * check semaphore, if not down() already, then we don't
	 * know in which context the ISR is called and surely it
	 * will be a bug. Note that down() of the semaphore is done
	 * in the corresponding st95hf_in_send_cmd() and then
	 * only this ISR should be called. ISR will up() the
	 * semaphore before leaving. Hence when the ISR is called
	 * the correct behaviour is down_trylock() should always
	 * return 1 (indicating semaphore cant be taken and hence no
	 * change in semaphore count).
	 * If not, then we up() the semaphore and crash on
	 * a BUG() !
	 */
	if (!FUNC3(&stcontext->exchange_lock)) {
		FUNC13(&stcontext->exchange_lock);
		FUNC1(1, "unknown context in ST95HF ISR");
		return IRQ_NONE;
	}

	cb_arg = &stcontext->complete_cb_arg;
	skb_resp = cb_arg->skb_resp;

	FUNC5(&stcontext->rm_lock);
	res_len = FUNC10(&stcontext->spicontext,
					   skb_resp->data);
	if (res_len < 0) {
		FUNC2(spidevice, "TISR spi response err = 0x%x\n", res_len);
		result = res_len;
		goto end;
	}

	/* if stcontext->nfcdev_free is true, it means remove already ran */
	if (stcontext->nfcdev_free) {
		result = -ENODEV;
		goto end;
	}

	if (skb_resp->data[2] == WTX_REQ_FROM_TAG) {
		/* Request for new FWT from tag */
		result = FUNC8(stcontext, true, skb_resp->data[3]);
		if (result)
			goto end;

		wtx = true;
		FUNC6(&stcontext->rm_lock);
		return IRQ_HANDLED;
	}

	result = FUNC7(stcontext, skb_resp, res_len);
	if (result)
		goto end;

	result = FUNC9(stcontext, skb_resp, res_len);
	if (result)
		goto end;

	/*
	 * If select protocol is done on wtx req. do select protocol
	 * again with default values
	 */
	if (wtx) {
		wtx = false;
		result = FUNC8(stcontext, false, 0);
		if (result)
			goto end;
	}

	/* call digital layer callback */
	cb_arg->complete_cb(stcontext->ddev, cb_arg->cb_usrarg, skb_resp);

	/* up the semaphore before returning */
	FUNC13(&stcontext->exchange_lock);
	FUNC6(&stcontext->rm_lock);

	return IRQ_HANDLED;

end:
	FUNC4(skb_resp);
	wtx = false;
	cb_arg->rats = false;
	skb_resp = FUNC0(result);
	/* call of callback with error */
	cb_arg->complete_cb(stcontext->ddev, cb_arg->cb_usrarg, skb_resp);
	/* up the semaphore before returning */
	FUNC13(&stcontext->exchange_lock);
	FUNC6(&stcontext->rm_lock);
	return IRQ_HANDLED;
}