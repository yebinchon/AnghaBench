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
struct ap_queue {unsigned int total_request_count; int /*<<< orphan*/  lock; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct ap_queue* FUNC3 (struct device*) ; 

__attribute__((used)) static ssize_t FUNC4(struct device *dev,
				  struct device_attribute *attr,
				  char *buf)
{
	struct ap_queue *aq = FUNC3(dev);
	unsigned int req_cnt;

	FUNC1(&aq->lock);
	req_cnt = aq->total_request_count;
	FUNC2(&aq->lock);
	return FUNC0(buf, PAGE_SIZE, "%d\n", req_cnt);
}