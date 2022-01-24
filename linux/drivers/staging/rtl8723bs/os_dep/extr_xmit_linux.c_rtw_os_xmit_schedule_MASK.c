#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  queue; } ;
struct TYPE_4__ {int /*<<< orphan*/  xmit_comp; TYPE_1__ pending_xmitbuf_queue; } ;
struct adapter {TYPE_2__ xmitpriv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

void FUNC2(struct adapter *padapter)
{
	struct adapter *pri_adapter = padapter;

	if (!padapter)
		return;

	if (!FUNC1(&padapter->xmitpriv.pending_xmitbuf_queue.queue))
		FUNC0(&pri_adapter->xmitpriv.xmit_comp);
}