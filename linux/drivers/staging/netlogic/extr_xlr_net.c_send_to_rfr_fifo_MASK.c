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
typedef  int u64 ;
struct xlr_net_priv {int /*<<< orphan*/  ndev; TYPE_1__* nd; } ;
struct nlm_fmn_msg {int msg0; scalar_t__ msg3; scalar_t__ msg2; scalar_t__ msg1; } ;
struct TYPE_2__ {int rfr_station; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 unsigned long FUNC2 () ; 
 int FUNC3 (int,int /*<<< orphan*/ ,int,struct nlm_fmn_msg*) ; 
 unsigned long FUNC4 (void*) ; 

__attribute__((used)) static int FUNC5(struct xlr_net_priv *priv, void *addr)
{
	struct nlm_fmn_msg msg;
	int ret = 0, num_try = 0, stnid;
	unsigned long paddr, mflags;

	paddr = FUNC4(addr);
	msg.msg0 = (u64)paddr & 0xffffffffe0ULL;
	msg.msg1 = 0;
	msg.msg2 = 0;
	msg.msg3 = 0;
	stnid = priv->nd->rfr_station;
	do {
		mflags = FUNC2();
		ret = FUNC3(1, 0, stnid, &msg);
		FUNC1(mflags);
		if (ret == 0)
			return 0;
	} while (++num_try < 10000);

	FUNC0(priv->ndev, "Send to RFR failed in RX path\n");
	return ret;
}