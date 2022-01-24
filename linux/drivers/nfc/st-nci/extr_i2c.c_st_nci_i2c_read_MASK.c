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
struct st_nci_i2c_phy {struct i2c_client* i2c_dev; } ;
struct sk_buff {scalar_t__ data; } ;
struct i2c_client {int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  __be16 ;

/* Variables and functions */
 int EBADMSG ; 
 int ENOMEM ; 
 int EREMOTEIO ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int ST_NCI_I2C_MAX_SIZE ; 
 int ST_NCI_I2C_MIN_SIZE ; 
 struct sk_buff* FUNC0 (int,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct i2c_client*,int*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC8 (int,int) ; 

__attribute__((used)) static int FUNC9(struct st_nci_i2c_phy *phy,
				 struct sk_buff **skb)
{
	int r;
	u8 len;
	u8 buf[ST_NCI_I2C_MAX_SIZE];
	struct i2c_client *client = phy->i2c_dev;

	r = FUNC2(client, buf, ST_NCI_I2C_MIN_SIZE);
	if (r < 0) {  /* Retry, chip was in standby */
		FUNC8(1000, 4000);
		r = FUNC2(client, buf, ST_NCI_I2C_MIN_SIZE);
	}

	if (r != ST_NCI_I2C_MIN_SIZE)
		return -EREMOTEIO;

	len = FUNC1(*(__be16 *) (buf + 2));
	if (len > ST_NCI_I2C_MAX_SIZE) {
		FUNC5(&client->dev, "invalid frame len\n");
		return -EBADMSG;
	}

	*skb = FUNC0(ST_NCI_I2C_MIN_SIZE + len, GFP_KERNEL);
	if (*skb == NULL)
		return -ENOMEM;

	FUNC7(*skb, ST_NCI_I2C_MIN_SIZE);
	FUNC6(*skb, ST_NCI_I2C_MIN_SIZE);
	FUNC4((*skb)->data, buf, ST_NCI_I2C_MIN_SIZE);

	if (!len)
		return 0;

	r = FUNC2(client, buf, len);
	if (r != len) {
		FUNC3(*skb);
		return -EREMOTEIO;
	}

	FUNC6(*skb, len);
	FUNC4((*skb)->data + ST_NCI_I2C_MIN_SIZE, buf, len);

	return 0;
}