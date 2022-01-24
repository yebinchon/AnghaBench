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
typedef  int u32 ;
struct goldfish_audio {int buffer_status; int /*<<< orphan*/  lock; int /*<<< orphan*/  wait; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int AUDIO_INT_MASK ; 
 int /*<<< orphan*/  AUDIO_INT_STATUS ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int FUNC0 (struct goldfish_audio*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static irqreturn_t FUNC4(int irq, void *dev_id)
{
	unsigned long irq_flags;
	struct goldfish_audio	*data = dev_id;
	u32 status;

	FUNC1(&data->lock, irq_flags);

	/* read buffer status flags */
	status = FUNC0(data, AUDIO_INT_STATUS);
	status &= AUDIO_INT_MASK;
	/*
	 *  if buffers are newly empty, wake up blocked
	 *  goldfish_audio_write() call
	 */
	if (status) {
		data->buffer_status = status;
		FUNC3(&data->wait);
	}

	FUNC2(&data->lock, irq_flags);
	return status ? IRQ_HANDLED : IRQ_NONE;
}