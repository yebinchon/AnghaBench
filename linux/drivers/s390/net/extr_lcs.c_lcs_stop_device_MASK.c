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
struct net_device {int /*<<< orphan*/  flags; scalar_t__ ml_priv; } ;
struct TYPE_4__ {scalar_t__ state; int /*<<< orphan*/  wait_q; } ;
struct lcs_card {TYPE_1__* dev; TYPE_2__ write; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  IFF_UP ; 
 scalar_t__ LCS_CH_STATE_RUNNING ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int FUNC2 (struct lcs_card*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  trace ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC6(struct net_device *dev)
{
	struct lcs_card *card;
	int rc;

	FUNC0(2, trace, "stopdev");
	card   = (struct lcs_card *) dev->ml_priv;
	FUNC3(dev);
	FUNC4(dev);
	dev->flags &= ~IFF_UP;
	FUNC5(card->write.wait_q,
		(card->write.state != LCS_CH_STATE_RUNNING));
	rc = FUNC2(card);
	if (rc)
		FUNC1(&card->dev->dev,
			" Shutting down the LCS device failed\n");
	return rc;
}