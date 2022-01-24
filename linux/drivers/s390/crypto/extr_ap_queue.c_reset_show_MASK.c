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
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct ap_queue {int state; int /*<<< orphan*/  lock; } ;
typedef  int ssize_t ;

/* Variables and functions */
#define  AP_STATE_QUEUE_FULL 131 
#define  AP_STATE_RESET_START 130 
#define  AP_STATE_RESET_WAIT 129 
#define  AP_STATE_WORKING 128 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int FUNC0 (char*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct ap_queue* FUNC3 (struct device*) ; 

__attribute__((used)) static ssize_t FUNC4(struct device *dev,
			  struct device_attribute *attr, char *buf)
{
	struct ap_queue *aq = FUNC3(dev);
	int rc = 0;

	FUNC1(&aq->lock);
	switch (aq->state) {
	case AP_STATE_RESET_START:
	case AP_STATE_RESET_WAIT:
		rc = FUNC0(buf, PAGE_SIZE, "Reset in progress.\n");
		break;
	case AP_STATE_WORKING:
	case AP_STATE_QUEUE_FULL:
		rc = FUNC0(buf, PAGE_SIZE, "Reset Timer armed.\n");
		break;
	default:
		rc = FUNC0(buf, PAGE_SIZE, "No Reset Timer set.\n");
	}
	FUNC2(&aq->lock);
	return rc;
}