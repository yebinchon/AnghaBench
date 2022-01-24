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
typedef  int /*<<< orphan*/  u16 ;
struct anybuss_host {int /*<<< orphan*/  wq; int /*<<< orphan*/  qlock; int /*<<< orphan*/  powerq; int /*<<< orphan*/  qcache; } ;
struct anybuss_client {struct anybuss_host* host; } ;
struct TYPE_2__ {int /*<<< orphan*/  buf; } ;
struct ab_task {TYPE_1__ area_pd; } ;

/* Variables and functions */
 int EFAULT ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FBCTRL_AREA ; 
 int /*<<< orphan*/  IND_AX_FBCTRL ; 
 int /*<<< orphan*/  MAX_FBCTRL_AREA_SZ ; 
 int FUNC0 (struct ab_task*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct ab_task*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct ab_task* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC4 (void*,int /*<<< orphan*/ ,size_t) ; 

int FUNC5(struct anybuss_client *client, u16 addr,
			void *buf, size_t count)
{
	struct anybuss_host *cd = client->host;
	struct ab_task *t;
	int ret;

	if (count == 0)
		return 0;
	if (!FUNC2(addr, count, FBCTRL_AREA,
			   MAX_FBCTRL_AREA_SZ))
		return -EFAULT;
	t = FUNC3(cd->qcache, IND_AX_FBCTRL, addr, count);
	if (!t)
		return -ENOMEM;
	ret = FUNC0(t, cd->powerq, &cd->qlock, &cd->wq);
	if (ret)
		goto out;
	FUNC4(buf, t->area_pd.buf, count);
out:
	FUNC1(t);
	return ret;
}