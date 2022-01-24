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
typedef  int /*<<< orphan*/  u32 ;
struct sk_buff {int dummy; } ;
struct rpmsg_eptdev {int /*<<< orphan*/  readq; int /*<<< orphan*/  queue_lock; int /*<<< orphan*/  queue; } ;
struct rpmsg_device {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 struct sk_buff* FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,void*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct rpmsg_device *rpdev, void *buf, int len,
			void *priv, u32 addr)
{
	struct rpmsg_eptdev *eptdev = priv;
	struct sk_buff *skb;

	skb = FUNC0(len, GFP_ATOMIC);
	if (!skb)
		return -ENOMEM;

	FUNC1(skb, buf, len);

	FUNC3(&eptdev->queue_lock);
	FUNC2(&eptdev->queue, skb);
	FUNC4(&eptdev->queue_lock);

	/* wake up any blocking processes, waiting for new data */
	FUNC5(&eptdev->readq);

	return 0;
}