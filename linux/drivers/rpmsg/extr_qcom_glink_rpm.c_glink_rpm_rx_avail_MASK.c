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
struct qcom_glink_pipe {int dummy; } ;
struct TYPE_2__ {unsigned int length; } ;
struct glink_rpm_pipe {TYPE_1__ native; int /*<<< orphan*/  tail; int /*<<< orphan*/  head; } ;

/* Variables and functions */
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 struct glink_rpm_pipe* FUNC1 (struct qcom_glink_pipe*) ; 

__attribute__((used)) static size_t FUNC2(struct qcom_glink_pipe *glink_pipe)
{
	struct glink_rpm_pipe *pipe = FUNC1(glink_pipe);
	unsigned int head;
	unsigned int tail;

	head = FUNC0(pipe->head);
	tail = FUNC0(pipe->tail);

	if (head < tail)
		return pipe->native.length - tail + head;
	else
		return head - tail;
}