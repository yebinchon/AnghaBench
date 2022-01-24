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
struct recv_frame {int dummy; } ;
struct __queue {int dummy; } ;
struct TYPE_2__ {struct __queue free_recv_queue; } ;
struct adapter {TYPE_1__ recvpriv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int _SUCCESS ; 
 int /*<<< orphan*/  _drv_info_ ; 
 int /*<<< orphan*/  _module_rtl871x_recv_c_ ; 
 int /*<<< orphan*/  FUNC1 (struct recv_frame*,struct __queue*) ; 
 int FUNC2 (struct adapter*,struct recv_frame*) ; 

__attribute__((used)) static int FUNC3(struct adapter *padapter,
			       struct recv_frame *rframe)
{
	int ret = _SUCCESS;
	struct __queue *pfree_recv_queue = &padapter->recvpriv.free_recv_queue;

	/* check the frame crtl field and decache */
	ret = FUNC2(padapter, rframe);
	if (ret != _SUCCESS) {
		FUNC0(_module_rtl871x_recv_c_, _drv_info_, ("recv_func: validate_recv_frame fail! drop pkt\n"));
		FUNC1(rframe, pfree_recv_queue);/* free this recv_frame */
		goto exit;
	}

exit:
	return ret;
}