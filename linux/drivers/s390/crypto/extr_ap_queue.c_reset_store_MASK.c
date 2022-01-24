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
struct ap_queue {int /*<<< orphan*/  qid; int /*<<< orphan*/  lock; int /*<<< orphan*/  state; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AP_EVENT_POLL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AP_STATE_RESET_START ; 
 int /*<<< orphan*/  DBF_INFO ; 
 int /*<<< orphan*/  FUNC3 (struct ap_queue*) ; 
 int /*<<< orphan*/  FUNC4 (struct ap_queue*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 struct ap_queue* FUNC8 (struct device*) ; 

__attribute__((used)) static ssize_t FUNC9(struct device *dev,
			   struct device_attribute *attr,
			   const char *buf, size_t count)
{
	struct ap_queue *aq = FUNC8(dev);

	FUNC6(&aq->lock);
	FUNC3(aq);
	aq->state = AP_STATE_RESET_START;
	FUNC5(FUNC4(aq, AP_EVENT_POLL));
	FUNC7(&aq->lock);

	FUNC0(DBF_INFO, "reset queue=%02x.%04x triggered by user\n",
	       FUNC1(aq->qid), FUNC2(aq->qid));

	return count;
}