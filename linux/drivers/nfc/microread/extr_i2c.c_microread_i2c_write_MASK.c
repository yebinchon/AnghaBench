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
struct sk_buff {int len; int /*<<< orphan*/  data; } ;
struct microread_i2c_phy {scalar_t__ hard_fault; struct i2c_client* i2c_dev; } ;
struct i2c_client {int dummy; } ;

/* Variables and functions */
 int EREMOTEIO ; 
 int /*<<< orphan*/  FUNC0 (char*,struct sk_buff*) ; 
 int FUNC1 (struct i2c_client*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (int,int) ; 

__attribute__((used)) static int FUNC5(void *phy_id, struct sk_buff *skb)
{
	int r;
	struct microread_i2c_phy *phy = phy_id;
	struct i2c_client *client = phy->i2c_dev;

	if (phy->hard_fault != 0)
		return phy->hard_fault;

	FUNC4(3000, 6000);

	FUNC2(skb);

	FUNC0("i2c frame written", skb);

	r = FUNC1(client, skb->data, skb->len);

	if (r == -EREMOTEIO) {	/* Retry, chip was in standby */
		FUNC4(6000, 10000);
		r = FUNC1(client, skb->data, skb->len);
	}

	if (r >= 0) {
		if (r != skb->len)
			r = -EREMOTEIO;
		else
			r = 0;
	}

	FUNC3(skb);

	return r;
}