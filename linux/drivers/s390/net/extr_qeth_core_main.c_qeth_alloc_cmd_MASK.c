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
struct qeth_cmd_buffer {long timeout; unsigned int length; struct qeth_channel* channel; int /*<<< orphan*/  ref_count; int /*<<< orphan*/  list; int /*<<< orphan*/  lock; int /*<<< orphan*/  done; void* data; } ;
struct qeth_channel {int dummy; } ;
struct ccw1 {int dummy; } ;

/* Variables and functions */
 unsigned int FUNC0 (unsigned int,int) ; 
 int GFP_DMA ; 
 int GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 unsigned int QETH_BUFSIZE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct qeth_cmd_buffer*) ; 
 void* FUNC4 (unsigned int,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

struct qeth_cmd_buffer *FUNC7(struct qeth_channel *channel,
				       unsigned int length, unsigned int ccws,
				       long timeout)
{
	struct qeth_cmd_buffer *iob;

	if (length > QETH_BUFSIZE)
		return NULL;

	iob = FUNC4(sizeof(*iob), GFP_KERNEL);
	if (!iob)
		return NULL;

	iob->data = FUNC4(FUNC0(length, 8) + ccws * sizeof(struct ccw1),
			    GFP_KERNEL | GFP_DMA);
	if (!iob->data) {
		FUNC3(iob);
		return NULL;
	}

	FUNC2(&iob->done);
	FUNC6(&iob->lock);
	FUNC1(&iob->list);
	FUNC5(&iob->ref_count, 1);
	iob->channel = channel;
	iob->timeout = timeout;
	iob->length = length;
	return iob;
}