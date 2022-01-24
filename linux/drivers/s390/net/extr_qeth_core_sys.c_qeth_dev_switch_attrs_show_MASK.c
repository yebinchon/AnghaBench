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
struct qeth_switch_info {int capabilities; int settings; } ;
struct qeth_card {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int EINVAL ; 
 int QETH_SWITCH_FORW_802_1 ; 
 int QETH_SWITCH_FORW_REFL_RELAY ; 
 struct qeth_card* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (struct qeth_card*) ; 
 int FUNC2 (struct qeth_card*,struct qeth_switch_info*) ; 
 int FUNC3 (char*,char*) ; 

__attribute__((used)) static ssize_t FUNC4(struct device *dev,
				struct device_attribute *attr, char *buf)
{
	struct qeth_card *card = FUNC0(dev);
	struct qeth_switch_info sw_info;
	int	rc = 0;

	if (!card)
		return -EINVAL;

	if (!FUNC1(card))
		return FUNC3(buf, "n/a\n");

	rc = FUNC2(card, &sw_info);
	if (rc)
		return rc;

	if (!sw_info.capabilities)
		rc = FUNC3(buf, "unknown");

	if (sw_info.capabilities & QETH_SWITCH_FORW_802_1)
		rc = FUNC3(buf, (sw_info.settings & QETH_SWITCH_FORW_802_1 ?
							"[802.1]" : "802.1"));
	if (sw_info.capabilities & QETH_SWITCH_FORW_REFL_RELAY)
		rc += FUNC3(buf + rc,
			(sw_info.settings & QETH_SWITCH_FORW_REFL_RELAY ?
							" [rr]" : " rr"));
	rc += FUNC3(buf + rc, "\n");

	return rc;
}