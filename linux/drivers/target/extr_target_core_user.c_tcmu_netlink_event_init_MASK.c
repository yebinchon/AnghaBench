#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  dev_index; } ;
struct TYPE_5__ {TYPE_1__* uio_dev; int /*<<< orphan*/  name; } ;
struct tcmu_dev {TYPE_3__ se_dev; TYPE_2__ uio_info; } ;
struct sk_buff {int dummy; } ;
typedef  enum tcmu_genl_cmd { ____Placeholder_tcmu_genl_cmd } tcmu_genl_cmd ;
struct TYPE_4__ {int /*<<< orphan*/  minor; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  NLMSG_GOODSIZE ; 
 int /*<<< orphan*/  TCMU_ATTR_DEVICE ; 
 int /*<<< orphan*/  TCMU_ATTR_DEVICE_ID ; 
 int /*<<< orphan*/  TCMU_ATTR_MINOR ; 
 struct sk_buff* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC1 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*) ; 
 int /*<<< orphan*/  tcmu_genl_family ; 

__attribute__((used)) static int FUNC5(struct tcmu_dev *udev,
				   enum tcmu_genl_cmd cmd,
				   struct sk_buff **buf, void **hdr)
{
	struct sk_buff *skb;
	void *msg_header;
	int ret = -ENOMEM;

	skb = FUNC0(NLMSG_GOODSIZE, GFP_KERNEL);
	if (!skb)
		return ret;

	msg_header = FUNC1(skb, 0, 0, &tcmu_genl_family, 0, cmd);
	if (!msg_header)
		goto free_skb;

	ret = FUNC2(skb, TCMU_ATTR_DEVICE, udev->uio_info.name);
	if (ret < 0)
		goto free_skb;

	ret = FUNC3(skb, TCMU_ATTR_MINOR, udev->uio_info.uio_dev->minor);
	if (ret < 0)
		goto free_skb;

	ret = FUNC3(skb, TCMU_ATTR_DEVICE_ID, udev->se_dev.dev_index);
	if (ret < 0)
		goto free_skb;

	*buf = skb;
	*hdr = msg_header;
	return ret;

free_skb:
	FUNC4(skb);
	return ret;
}