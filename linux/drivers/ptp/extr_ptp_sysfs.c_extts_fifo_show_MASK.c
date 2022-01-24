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
struct timestamp_event_queue {size_t head; int /*<<< orphan*/  lock; struct ptp_extts_event* buf; } ;
struct TYPE_2__ {int /*<<< orphan*/  nsec; int /*<<< orphan*/  sec; } ;
struct ptp_extts_event {int index; TYPE_1__ t; } ;
struct ptp_clock {int /*<<< orphan*/  tsevq_mux; struct timestamp_event_queue tsevq; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;
typedef  int /*<<< orphan*/  event ;

/* Variables and functions */
 int ERESTARTSYS ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int PTP_MAX_TIMESTAMPS ; 
 struct ptp_clock* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (struct ptp_extts_event*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 size_t FUNC4 (struct timestamp_event_queue*) ; 
 int FUNC5 (char*,int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static ssize_t FUNC8(struct device *dev,
			       struct device_attribute *attr, char *page)
{
	struct ptp_clock *ptp = FUNC0(dev);
	struct timestamp_event_queue *queue = &ptp->tsevq;
	struct ptp_extts_event event;
	unsigned long flags;
	size_t qcnt;
	int cnt = 0;

	FUNC1(&event, 0, sizeof(event));

	if (FUNC2(&ptp->tsevq_mux))
		return -ERESTARTSYS;

	FUNC6(&queue->lock, flags);
	qcnt = FUNC4(queue);
	if (qcnt) {
		event = queue->buf[queue->head];
		queue->head = (queue->head + 1) % PTP_MAX_TIMESTAMPS;
	}
	FUNC7(&queue->lock, flags);

	if (!qcnt)
		goto out;

	cnt = FUNC5(page, PAGE_SIZE, "%u %lld %u\n",
		       event.index, event.t.sec, event.t.nsec);
out:
	FUNC3(&ptp->tsevq_mux);
	return cnt;
}