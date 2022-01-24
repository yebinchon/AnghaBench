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
struct vfio_ap_queue_reserved {unsigned long* apid; unsigned long* apqi; int reserved; } ;
struct device {int dummy; } ;
struct ap_queue {scalar_t__ qid; } ;
typedef  scalar_t__ ap_qid_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (unsigned long,unsigned long) ; 
 unsigned long FUNC1 (scalar_t__) ; 
 unsigned long FUNC2 (scalar_t__) ; 
 int EINVAL ; 
 struct ap_queue* FUNC3 (struct device*) ; 

__attribute__((used)) static int FUNC4(struct device *dev, void *data)
{
	struct vfio_ap_queue_reserved *qres = data;
	struct ap_queue *ap_queue = FUNC3(dev);
	ap_qid_t qid;
	unsigned long id;

	if (qres->apid && qres->apqi) {
		qid = FUNC0(*qres->apid, *qres->apqi);
		if (qid == ap_queue->qid)
			qres->reserved = true;
	} else if (qres->apid && !qres->apqi) {
		id = FUNC1(ap_queue->qid);
		if (id == *qres->apid)
			qres->reserved = true;
	} else if (!qres->apid && qres->apqi) {
		id = FUNC2(ap_queue->qid);
		if (id == *qres->apqi)
			qres->reserved = true;
	} else {
		return -EINVAL;
	}

	return 0;
}