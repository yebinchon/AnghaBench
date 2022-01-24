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
typedef  int /*<<< orphan*/  zero ;
typedef  int /*<<< orphan*/  u8 ;
struct anybuss_host {int softint_pending; int /*<<< orphan*/  wq; int /*<<< orphan*/  qlock; int /*<<< orphan*/  powerq; int /*<<< orphan*/  qcache; int /*<<< orphan*/  dev; int /*<<< orphan*/  regmap; int /*<<< orphan*/  ind_ab; int /*<<< orphan*/  power_on; struct anybuss_client* client; } ;
struct anybuss_client {int /*<<< orphan*/  (* on_area_updated ) (struct anybuss_client*) ;int /*<<< orphan*/  (* on_online_changed ) (struct anybuss_client*,int) ;} ;
struct ab_task {int /*<<< orphan*/  (* done_fn ) (struct anybuss_host*) ;} ;

/* Variables and functions */
 int ENOMEM ; 
 unsigned int EVENT_CAUSE_DC ; 
 unsigned int EVENT_CAUSE_FBOF ; 
 unsigned int EVENT_CAUSE_FBON ; 
 unsigned int IND_AX_EVNT ; 
 int /*<<< orphan*/  IND_AX_FBCTRL ; 
 int /*<<< orphan*/  REG_EVENT_CAUSE ; 
 int /*<<< orphan*/  REG_IND_AP ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (struct ab_task*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct ab_task*) ; 
 unsigned int FUNC3 (int /*<<< orphan*/ *) ; 
 struct ab_task* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int*) ; 
 int /*<<< orphan*/  FUNC7 (struct anybuss_host*) ; 
 int /*<<< orphan*/  FUNC8 (struct anybuss_client*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct anybuss_client*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct anybuss_client*) ; 

__attribute__((used)) static void FUNC11(struct anybuss_host *cd)
{
	struct anybuss_client *client = cd->client;
	static const u8 zero;
	int ret;
	unsigned int ind_ap, ev;
	struct ab_task *t;

	if (!cd->power_on)
		return;
	if (cd->softint_pending)
		return;
	FUNC6(cd->regmap, REG_IND_AP, &ind_ap);
	if (!((FUNC3(&cd->ind_ab) ^ ind_ap) & IND_AX_EVNT))
		return;
	/* process software interrupt */
	FUNC6(cd->regmap, REG_EVENT_CAUSE, &ev);
	if (ev & EVENT_CAUSE_FBON) {
		if (client->on_online_changed)
			client->on_online_changed(client, true);
		FUNC5(cd->dev, "Fieldbus ON");
	}
	if (ev & EVENT_CAUSE_FBOF) {
		if (client->on_online_changed)
			client->on_online_changed(client, false);
		FUNC5(cd->dev, "Fieldbus OFF");
	}
	if (ev & EVENT_CAUSE_DC) {
		if (client->on_area_updated)
			client->on_area_updated(client);
		FUNC5(cd->dev, "Fieldbus data changed");
	}
	/*
	 * reset the event cause bits.
	 * this must be done while owning the fbctrl area, so we'll
	 * enqueue a task to do that.
	 */
	t = FUNC4(cd->qcache, IND_AX_FBCTRL,
			       REG_EVENT_CAUSE, &zero, sizeof(zero));
	if (!t) {
		ret = -ENOMEM;
		goto out;
	}
	t->done_fn = softint_ack;
	ret = FUNC1(t, cd->powerq, &cd->qlock, &cd->wq);
	FUNC2(t);
	cd->softint_pending = true;
out:
	FUNC0(ret);
	if (ret)
		FUNC7(cd);
}