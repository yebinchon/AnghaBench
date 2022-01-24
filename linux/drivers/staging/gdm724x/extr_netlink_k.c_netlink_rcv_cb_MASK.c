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
struct sk_buff {scalar_t__ len; scalar_t__ data; } ;
struct nlmsghdr {scalar_t__ nlmsg_len; int /*<<< orphan*/  nlmsg_type; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ND_IFINDEX_LEN ; 
 scalar_t__ ND_MAX_MSG_LEN ; 
 void* FUNC0 (struct nlmsghdr*) ; 
 int /*<<< orphan*/  FUNC1 (struct nlmsghdr*) ; 
 int /*<<< orphan*/  FUNC2 (struct nlmsghdr*) ; 
 scalar_t__ NLMSG_HDRLEN ; 
 struct net_device* FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  init_net ; 
 int /*<<< orphan*/  FUNC5 (int*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 
 int /*<<< orphan*/  FUNC7 (struct net_device*,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(struct sk_buff *skb)
{
	struct nlmsghdr	*nlh;
	struct net_device *dev;
	u32 mlen;
	void *msg;
	int ifindex;

	if (!&rcv_cb) {
		FUNC6("nl cb - unregistered\n");
		return;
	}

	if (skb->len < NLMSG_HDRLEN) {
		FUNC6("nl cb - invalid skb length\n");
		return;
	}

	nlh = (struct nlmsghdr *)skb->data;

	if (skb->len < nlh->nlmsg_len || nlh->nlmsg_len > ND_MAX_MSG_LEN) {
		FUNC6("nl cb - invalid length (%d,%d)\n",
		       skb->len, nlh->nlmsg_len);
		return;
	}

	FUNC5(&ifindex, FUNC1(nlh), ND_IFINDEX_LEN);
	msg = FUNC0(nlh);
	mlen = FUNC2(nlh);

	dev = FUNC3(&init_net, ifindex);
	if (dev) {
		FUNC7(dev, nlh->nlmsg_type, msg, mlen);
		FUNC4(dev);
	} else {
		FUNC6("nl cb - dev (%d) not found\n", ifindex);
	}
}