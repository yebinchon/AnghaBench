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
struct mbox_priv {int msg_in_sz; int /*<<< orphan*/ * msg; int /*<<< orphan*/  hdr; } ;
struct anybuss_host {int /*<<< orphan*/  regmap; int /*<<< orphan*/  ind_ab; int /*<<< orphan*/  power_on; } ;
struct ab_task {scalar_t__ start_jiffies; struct mbox_priv mbox_pd; } ;

/* Variables and functions */
 int EINPROGRESS ; 
 int EIO ; 
 int ETIMEDOUT ; 
 unsigned int IND_AX_MOUT ; 
 scalar_t__ MBOX_OUT_AREA ; 
 int /*<<< orphan*/  REG_IND_AP ; 
 scalar_t__ TIMEOUT ; 
 unsigned int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  jiffies ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC4 (int /*<<< orphan*/ ,unsigned int) ; 

__attribute__((used)) static int FUNC5(struct anybuss_host *cd, struct ab_task *t)
{
	struct mbox_priv *pd = &t->mbox_pd;
	unsigned int ind_ap;

	if (!cd->power_on)
		return -EIO;
	FUNC2(cd->regmap, REG_IND_AP, &ind_ap);
	if (((FUNC0(&cd->ind_ab) ^ ind_ap) & IND_AX_MOUT) == 0) {
		/* output message not here */
		if (FUNC3(jiffies, t->start_jiffies + TIMEOUT))
			return -ETIMEDOUT;
		return -EINPROGRESS;
	}
	/* grab the returned header and msg */
	FUNC1(cd->regmap, MBOX_OUT_AREA, &pd->hdr,
			 sizeof(pd->hdr));
	FUNC1(cd->regmap, MBOX_OUT_AREA + sizeof(pd->hdr),
			 pd->msg, pd->msg_in_sz);
	/* tell anybus we've consumed the message */
	ind_ap ^= IND_AX_MOUT;
	return FUNC4(cd->regmap, ind_ap);
}