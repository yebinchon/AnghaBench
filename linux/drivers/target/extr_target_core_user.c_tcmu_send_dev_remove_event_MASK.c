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
struct tcmu_dev {int dummy; } ;
struct sk_buff {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  TCMU_CMD_REMOVED_DEVICE ; 
 int FUNC0 (struct tcmu_dev*,int /*<<< orphan*/ ,struct sk_buff**,void**) ; 
 int FUNC1 (struct tcmu_dev*,int /*<<< orphan*/ ,struct sk_buff*,void*) ; 

__attribute__((used)) static int FUNC2(struct tcmu_dev *udev)
{
	struct sk_buff *skb = NULL;
	void *msg_header = NULL;
	int ret = 0;

	ret = FUNC0(udev, TCMU_CMD_REMOVED_DEVICE,
				      &skb, &msg_header);
	if (ret < 0)
		return ret;
	return FUNC1(udev, TCMU_CMD_REMOVED_DEVICE,
				       skb, msg_header);
}