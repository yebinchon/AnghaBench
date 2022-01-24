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
struct nvec_msg {int /*<<< orphan*/  used; } ;
struct nvec_chip {int msg_pool; int /*<<< orphan*/  dev; struct nvec_msg tx_scratch; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,struct nvec_msg*) ; 

void FUNC2(struct nvec_chip *nvec, struct nvec_msg *msg)
{
	if (msg != &nvec->tx_scratch)
		FUNC1(nvec->dev, "INFO: Free %ti\n", msg - nvec->msg_pool);
	FUNC0(&msg->used, 0);
}