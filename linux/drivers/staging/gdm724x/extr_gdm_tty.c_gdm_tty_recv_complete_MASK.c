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
struct tty_dev {struct gdm** gdm; } ;
struct gdm {TYPE_1__* tty_dev; int /*<<< orphan*/  port; } ;
struct TYPE_2__ {int /*<<< orphan*/  priv_dev; int /*<<< orphan*/  (* recv_func ) (int /*<<< orphan*/ ,int (*) (void*,int,int,struct tty_dev*,int)) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct gdm*) ; 
 int RECV_PACKET_PROCESS_COMPLETE ; 
 int TO_HOST_BUFFER_REQUEST_FAIL ; 
 int TO_HOST_PORT_CLOSE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int (*) (void*,int,int,struct tty_dev*,int)) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int (*) (void*,int,int,struct tty_dev*,int)) ; 
 int FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,void*,int) ; 

__attribute__((used)) static int FUNC6(void *data,
				 int len,
				 int index,
				 struct tty_dev *tty_dev,
				 int complete)
{
	struct gdm *gdm = tty_dev->gdm[index];

	if (!FUNC0(gdm)) {
		if (complete == RECV_PACKET_PROCESS_COMPLETE)
			gdm->tty_dev->recv_func(gdm->tty_dev->priv_dev,
						gdm_tty_recv_complete);
		return TO_HOST_PORT_CLOSE;
	}

	if (data && len) {
		if (FUNC3(&gdm->port, len) == len) {
			FUNC5(&gdm->port, data, len);
			FUNC4(&gdm->port);
		} else {
			return TO_HOST_BUFFER_REQUEST_FAIL;
		}
	}

	if (complete == RECV_PACKET_PROCESS_COMPLETE)
		gdm->tty_dev->recv_func(gdm->tty_dev->priv_dev,
					gdm_tty_recv_complete);

	return 0;
}