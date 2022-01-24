#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct qeth_card {int state; TYPE_1__* dev; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;
struct TYPE_2__ {int flags; } ;

/* Variables and functions */
#define  CARD_STATE_DOWN 130 
#define  CARD_STATE_HARDSETUP 129 
#define  CARD_STATE_SOFTSETUP 128 
 int /*<<< orphan*/  EINVAL ; 
 int IFF_UP ; 
 struct qeth_card* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,...) ; 

__attribute__((used)) static ssize_t FUNC3(struct device *dev,
				struct device_attribute *attr, char *buf)
{
	struct qeth_card *card = FUNC0(dev);
	if (!card)
		return -EINVAL;

	switch (card->state) {
	case CARD_STATE_DOWN:
		return FUNC2(buf, "DOWN\n");
	case CARD_STATE_HARDSETUP:
		return FUNC2(buf, "HARDSETUP\n");
	case CARD_STATE_SOFTSETUP:
		if (card->dev->flags & IFF_UP)
			return FUNC2(buf, "UP (LAN %s)\n",
				       FUNC1(card->dev) ? "ONLINE" :
								     "OFFLINE");
		return FUNC2(buf, "SOFTSETUP\n");
	default:
		return FUNC2(buf, "UNKNOWN\n");
	}
}