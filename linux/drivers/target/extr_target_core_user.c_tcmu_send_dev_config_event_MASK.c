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
 int /*<<< orphan*/  TCMU_ATTR_DEV_CFG ; 
 int /*<<< orphan*/  TCMU_CMD_RECONFIG_DEVICE ; 
 int FUNC0 (struct sk_buff*,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 int FUNC2 (struct tcmu_dev*,int /*<<< orphan*/ ,struct sk_buff**,void**) ; 
 int FUNC3 (struct tcmu_dev*,int /*<<< orphan*/ ,struct sk_buff*,void*) ; 

__attribute__((used)) static int FUNC4(struct tcmu_dev *udev,
				      const char *reconfig_data)
{
	struct sk_buff *skb = NULL;
	void *msg_header = NULL;
	int ret = 0;

	ret = FUNC2(udev, TCMU_CMD_RECONFIG_DEVICE,
				      &skb, &msg_header);
	if (ret < 0)
		return ret;
	ret = FUNC0(skb, TCMU_ATTR_DEV_CFG, reconfig_data);
	if (ret < 0) {
		FUNC1(skb);
		return ret;
	}
	return FUNC3(udev, TCMU_CMD_RECONFIG_DEVICE,
				       skb, msg_header);
}