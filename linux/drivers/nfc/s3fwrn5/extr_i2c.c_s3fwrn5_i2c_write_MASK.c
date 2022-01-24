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
struct s3fwrn5_i2c_phy {int irq_skip; int /*<<< orphan*/  mutex; int /*<<< orphan*/  i2c_dev; } ;

/* Variables and functions */
 int EREMOTEIO ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 

__attribute__((used)) static int FUNC4(void *phy_id, struct sk_buff *skb)
{
	struct s3fwrn5_i2c_phy *phy = phy_id;
	int ret;

	FUNC1(&phy->mutex);

	phy->irq_skip = false;

	ret = FUNC0(phy->i2c_dev, skb->data, skb->len);
	if (ret == -EREMOTEIO) {
		/* Retry, chip was in standby */
		FUNC3(110000, 120000);
		ret  = FUNC0(phy->i2c_dev, skb->data, skb->len);
	}

	FUNC2(&phy->mutex);

	if (ret < 0)
		return ret;

	if (ret != skb->len)
		return -EREMOTEIO;

	return 0;
}