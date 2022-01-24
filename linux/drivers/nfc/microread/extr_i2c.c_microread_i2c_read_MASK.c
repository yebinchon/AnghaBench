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
typedef  int u8 ;
typedef  int /*<<< orphan*/  tmp ;
struct sk_buff {scalar_t__ len; } ;
struct microread_i2c_phy {struct i2c_client* i2c_dev; } ;
struct i2c_client {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EBADMSG ; 
 int ENOMEM ; 
 int EREMOTEIO ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (char*,struct sk_buff*) ; 
 scalar_t__ MICROREAD_I2C_FRAME_TAILROOM ; 
 int MICROREAD_I2C_LLC_MAX_SIZE ; 
 int MICROREAD_I2C_LLC_MIN_SIZE ; 
 struct sk_buff* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct sk_buff*) ; 
 int FUNC3 (struct i2c_client*,int*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*,int) ; 
 int* FUNC7 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct sk_buff*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (int,int) ; 

__attribute__((used)) static int FUNC11(struct microread_i2c_phy *phy,
			      struct sk_buff **skb)
{
	int r;
	u8 len;
	u8 tmp[MICROREAD_I2C_LLC_MAX_SIZE - 1];
	struct i2c_client *client = phy->i2c_dev;

	r = FUNC3(client, &len, 1);
	if (r != 1) {
		FUNC5(&client->dev, "cannot read len byte\n");
		return -EREMOTEIO;
	}

	if ((len < MICROREAD_I2C_LLC_MIN_SIZE) ||
	    (len > MICROREAD_I2C_LLC_MAX_SIZE)) {
		FUNC5(&client->dev, "invalid len byte\n");
		r = -EBADMSG;
		goto flush;
	}

	*skb = FUNC1(1 + len, GFP_KERNEL);
	if (*skb == NULL) {
		r = -ENOMEM;
		goto flush;
	}

	FUNC8(*skb, len);

	r = FUNC3(client, FUNC7(*skb, len), len);
	if (r != len) {
		FUNC4(*skb);
		return -EREMOTEIO;
	}

	FUNC0("cc frame read", *skb);

	r = FUNC2(*skb);
	if (r != 0) {
		FUNC4(*skb);
		r = -EBADMSG;
		goto flush;
	}

	FUNC6(*skb, 1);
	FUNC9(*skb, (*skb)->len - MICROREAD_I2C_FRAME_TAILROOM);

	FUNC10(3000, 6000);

	return 0;

flush:
	if (FUNC3(client, tmp, sizeof(tmp)) < 0)
		r = -EREMOTEIO;

	FUNC10(3000, 6000);

	return r;
}