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
struct TYPE_2__ {scalar_t__ timer_pops; int started; int /*<<< orphan*/  timer; } ;
struct scsi_info {int flags; int state; int /*<<< orphan*/  dev; TYPE_1__ rsp_q_timer; } ;
typedef  int /*<<< orphan*/  ktime_t ;

/* Variables and functions */
 int CLIENT_FAILED ; 
 int ERR_DISCONNECT ; 
 int ERR_DISCONNECTED ; 
 int ERR_DISCONNECT_RECONNECT ; 
 int /*<<< orphan*/  HRTIMER_MODE_REL ; 
 long H_CLOSED ; 
 long H_DROPPED ; 
 scalar_t__ MAX_TIMER_POPS ; 
 int RESPONSE_Q_DOWN ; 
 scalar_t__ SRP_PROCESSING ; 
 int UNDEFINED ; 
 int /*<<< orphan*/  WAIT_NANO_SECONDS ; 
 int /*<<< orphan*/  WAIT_SECONDS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct scsi_info*) ; 
 int /*<<< orphan*/  FUNC4 (struct scsi_info*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct scsi_info *vscsi, long rc)
{
	ktime_t kt;

	if (rc != H_DROPPED) {
		FUNC3(vscsi);

		if (rc == H_CLOSED)
			vscsi->flags |= CLIENT_FAILED;

		/* don't flag the same problem multiple times */
		if (!(vscsi->flags & RESPONSE_Q_DOWN)) {
			vscsi->flags |= RESPONSE_Q_DOWN;
			if (!(vscsi->state & (ERR_DISCONNECT |
					      ERR_DISCONNECT_RECONNECT |
					      ERR_DISCONNECTED | UNDEFINED))) {
				FUNC1(&vscsi->dev, "snd_msg_failed: setting RESPONSE_Q_DOWN, state 0x%hx, flags 0x%x, rc %ld\n",
					vscsi->state, vscsi->flags, rc);
			}
			FUNC4(vscsi,
						  ERR_DISCONNECT_RECONNECT, 0);
		}
		return;
	}

	/*
	 * The response queue is full.
	 * If the server is processing SRP requests, i.e.
	 * the client has successfully done an
	 * SRP_LOGIN, then it will wait forever for room in
	 * the queue.  However if the system admin
	 * is attempting to unconfigure the server then one
	 * or more children will be in a state where
	 * they are being removed. So if there is even one
	 * child being removed then the driver assumes
	 * the system admin is attempting to break the
	 * connection with the client and MAX_TIMER_POPS
	 * is honored.
	 */
	if ((vscsi->rsp_q_timer.timer_pops < MAX_TIMER_POPS) ||
	    (vscsi->state == SRP_PROCESSING)) {
		FUNC0(&vscsi->dev, "snd_msg_failed: response queue full, flags 0x%x, timer started %d, pops %d\n",
			vscsi->flags, (int)vscsi->rsp_q_timer.started,
			vscsi->rsp_q_timer.timer_pops);

		/*
		 * Check if the timer is running; if it
		 * is not then start it up.
		 */
		if (!vscsi->rsp_q_timer.started) {
			if (vscsi->rsp_q_timer.timer_pops <
			    MAX_TIMER_POPS) {
				kt = WAIT_NANO_SECONDS;
			} else {
				/*
				 * slide the timeslice if the maximum
				 * timer pops have already happened
				 */
				kt = FUNC5(WAIT_SECONDS, 0);
			}

			vscsi->rsp_q_timer.started = true;
			FUNC2(&vscsi->rsp_q_timer.timer, kt,
				      HRTIMER_MODE_REL);
		}
	} else {
		/*
		 * TBD: Do we need to worry about this? Need to get
		 *      remove working.
		 */
		/*
		 * waited a long time and it appears the system admin
		 * is bring this driver down
		 */
		vscsi->flags |= RESPONSE_Q_DOWN;
		FUNC3(vscsi);
		/*
		 * if the driver is already attempting to disconnect
		 * from the client and has already logged an error
		 * trace this event but don't put it in the error log
		 */
		if (!(vscsi->state & (ERR_DISCONNECT |
				      ERR_DISCONNECT_RECONNECT |
				      ERR_DISCONNECTED | UNDEFINED))) {
			FUNC1(&vscsi->dev, "client crq full too long\n");
			FUNC4(vscsi,
						  ERR_DISCONNECT_RECONNECT,
						  0);
		}
	}
}