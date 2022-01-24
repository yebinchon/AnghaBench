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
struct ap_queue {scalar_t__ state; scalar_t__ interrupt; int /*<<< orphan*/  lock; } ;
typedef  int ssize_t ;

/* Variables and functions */
 scalar_t__ AP_INTR_ENABLED ; 
 scalar_t__ AP_STATE_SETIRQ_WAIT ; 
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
	if (aq->state == AP_STATE_SETIRQ_WAIT)
		rc = FUNC0(buf, PAGE_SIZE, "Enable Interrupt pending.\n");
	else if (aq->interrupt == AP_INTR_ENABLED)
		rc = FUNC0(buf, PAGE_SIZE, "Interrupts enabled.\n");
	else
		rc = FUNC0(buf, PAGE_SIZE, "Interrupts disabled.\n");
	FUNC2(&aq->lock);
	return rc;
}