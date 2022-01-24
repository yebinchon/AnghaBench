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
struct fcoe_ctlr_device {int dummy; } ;
struct fcoe_ctlr {int fip_resp; int /*<<< orphan*/  ctlr_mutex; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 size_t EINVAL ; 
 struct fcoe_ctlr_device* FUNC0 (struct device*) ; 
 struct fcoe_ctlr* FUNC1 (struct fcoe_ctlr_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static ssize_t FUNC4(struct device *dev,
			      struct device_attribute *attr,
			      const char *buf, size_t count)
{
	struct fcoe_ctlr_device *ctlr = FUNC0(dev);
	struct fcoe_ctlr *fip = FUNC1(ctlr);

	FUNC2(&fip->ctlr_mutex);
	if ((buf[1] == '\0') || ((buf[1] == '\n') && (buf[2] == '\0'))) {
		if (buf[0] == '1') {
			fip->fip_resp = 1;
			FUNC3(&fip->ctlr_mutex);
			return count;
		}
		if (buf[0] == '0') {
			fip->fip_resp = 0;
			FUNC3(&fip->ctlr_mutex);
			return count;
		}
	}
	FUNC3(&fip->ctlr_mutex);
	return -EINVAL;
}