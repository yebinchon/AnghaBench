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
typedef  int /*<<< orphan*/  u32 ;
struct visorchannel {int dummy; } ;
struct signal_queue_header {int head; int tail; int max_slots; int /*<<< orphan*/  num_received; } ;

/* Variables and functions */
 int EAGAIN ; 
 int FUNC0 (struct visorchannel*,int /*<<< orphan*/ ,struct signal_queue_header*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  num_received ; 
 int FUNC2 (struct visorchannel*,int /*<<< orphan*/ ,struct signal_queue_header*,int,void*) ; 
 int FUNC3 (struct visorchannel*,int /*<<< orphan*/ ,struct signal_queue_header*) ; 
 int /*<<< orphan*/  tail ; 

__attribute__((used)) static int FUNC4(struct visorchannel *channel, u32 queue,
			      void *msg)
{
	struct signal_queue_header sig_hdr;
	int error;

	error = FUNC3(channel, queue, &sig_hdr);
	if (error)
		return error;
	/* No signals to remove; have caller try again. */
	if (sig_hdr.head == sig_hdr.tail)
		return -EAGAIN;
	sig_hdr.tail = (sig_hdr.tail + 1) % sig_hdr.max_slots;
	error = FUNC2(channel, queue, &sig_hdr, sig_hdr.tail, msg);
	if (error)
		return error;
	sig_hdr.num_received++;
	/*
	 * For each data field in SIGNAL_QUEUE_HEADER that was modified, update
	 * host memory. Required for channel sync.
	 */
	FUNC1();
	error = FUNC0(channel, queue, &sig_hdr, tail);
	if (error)
		return error;
	error = FUNC0(channel, queue, &sig_hdr, num_received);
	if (error)
		return error;
	return 0;
}