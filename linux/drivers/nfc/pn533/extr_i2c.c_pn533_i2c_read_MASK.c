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
struct sk_buff {int* data; } ;
struct pn533_i2c_phy {TYPE_2__* priv; struct i2c_client* i2c_dev; } ;
struct i2c_client {int /*<<< orphan*/  dev; } ;
struct TYPE_4__ {TYPE_1__* ops; } ;
struct TYPE_3__ {int /*<<< orphan*/  (* rx_frame_size ) (int*) ;} ;

/* Variables and functions */
 int EBUSY ; 
 int ENOMEM ; 
 int EREMOTEIO ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int PN533_EXT_FRAME_HEADER_LEN ; 
 int PN533_STD_FRAME_MAX_PAYLOAD_LEN ; 
 int PN533_STD_FRAME_TAIL_LEN ; 
 struct sk_buff* FUNC0 (int,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct i2c_client*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int*) ; 

__attribute__((used)) static int FUNC8(struct pn533_i2c_phy *phy, struct sk_buff **skb)
{
	struct i2c_client *client = phy->i2c_dev;
	int len = PN533_EXT_FRAME_HEADER_LEN +
		  PN533_STD_FRAME_MAX_PAYLOAD_LEN +
		  PN533_STD_FRAME_TAIL_LEN + 1;
	int r;

	*skb = FUNC0(len, GFP_KERNEL);
	if (*skb == NULL)
		return -ENOMEM;

	r = FUNC1(client, FUNC5(*skb, len), len);
	if (r != len) {
		FUNC3(&client->dev, "cannot read. r=%d len=%d\n", r, len);
		FUNC2(*skb);
		return -EREMOTEIO;
	}

	if (!((*skb)->data[0] & 0x01)) {
		FUNC3(&client->dev, "READY flag not set");
		FUNC2(*skb);
		return -EBUSY;
	}

	/* remove READY byte */
	FUNC4(*skb, 1);
	/* trim to frame size */
	FUNC6(*skb, phy->priv->ops->rx_frame_size((*skb)->data));

	return 0;
}