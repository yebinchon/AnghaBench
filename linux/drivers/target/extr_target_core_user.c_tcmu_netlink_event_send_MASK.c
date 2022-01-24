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
typedef  enum tcmu_genl_cmd { ____Placeholder_tcmu_genl_cmd } tcmu_genl_cmd ;

/* Variables and functions */
 int ESRCH ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int TCMU_CMD_ADDED_DEVICE ; 
 int /*<<< orphan*/  TCMU_MCGRP_CONFIG ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,void*) ; 
 int FUNC1 (int /*<<< orphan*/ *,struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (struct tcmu_dev*) ; 
 int /*<<< orphan*/  tcmu_genl_family ; 
 int FUNC4 (struct tcmu_dev*,int) ; 
 int FUNC5 (struct tcmu_dev*) ; 

__attribute__((used)) static int FUNC6(struct tcmu_dev *udev,
				   enum tcmu_genl_cmd cmd,
				   struct sk_buff *skb, void *msg_header)
{
	int ret;

	FUNC0(skb, msg_header);

	ret = FUNC4(udev, cmd);
	if (ret) {
		FUNC2(skb);
		return ret;
	}

	ret = FUNC1(&tcmu_genl_family, skb, 0,
				      TCMU_MCGRP_CONFIG, GFP_KERNEL);

	/* Wait during an add as the listener may not be up yet */
	if (ret == 0 ||
	   (ret == -ESRCH && cmd == TCMU_CMD_ADDED_DEVICE))
		return FUNC5(udev);
	else
		FUNC3(udev);

	return ret;
}