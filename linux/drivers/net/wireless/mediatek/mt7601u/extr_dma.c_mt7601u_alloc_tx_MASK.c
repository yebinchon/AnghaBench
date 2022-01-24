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
struct mt7601u_dev {int /*<<< orphan*/ * tx_q; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int __MT_EP_OUT_MAX ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct mt7601u_dev*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC2(struct mt7601u_dev *dev)
{
	int i;

	dev->tx_q = FUNC0(dev->dev, __MT_EP_OUT_MAX,
				 sizeof(*dev->tx_q), GFP_KERNEL);
	if (!dev->tx_q)
		return -ENOMEM;

	for (i = 0; i < __MT_EP_OUT_MAX; i++)
		if (FUNC1(dev, &dev->tx_q[i]))
			return -ENOMEM;

	return 0;
}