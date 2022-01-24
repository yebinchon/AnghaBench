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
typedef  size_t u32 ;
struct qcom_glink_pipe {int dummy; } ;
struct TYPE_2__ {size_t length; } ;
struct glink_smem_pipe {TYPE_1__ native; int /*<<< orphan*/ * tail; int /*<<< orphan*/ * head; void* fifo; int /*<<< orphan*/  remote_pid; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (void*) ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 int /*<<< orphan*/  SMEM_GLINK_NATIVE_XPRT_FIFO_1 ; 
 size_t FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 void* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t*) ; 
 struct glink_smem_pipe* FUNC5 (struct qcom_glink_pipe*) ; 

__attribute__((used)) static size_t FUNC6(struct qcom_glink_pipe *np)
{
	struct glink_smem_pipe *pipe = FUNC5(np);
	size_t len;
	void *fifo;
	u32 head;
	u32 tail;

	if (!pipe->fifo) {
		fifo = FUNC4(pipe->remote_pid,
				     SMEM_GLINK_NATIVE_XPRT_FIFO_1, &len);
		if (FUNC0(fifo)) {
			FUNC3("failed to acquire RX fifo handle: %ld\n",
			       FUNC1(fifo));
			return 0;
		}

		pipe->fifo = fifo;
		pipe->native.length = len;
	}

	head = FUNC2(*pipe->head);
	tail = FUNC2(*pipe->tail);

	if (head < tail)
		return pipe->native.length - tail + head;
	else
		return head - tail;
}