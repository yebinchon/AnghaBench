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
typedef  scalar_t__ u16 ;
struct TYPE_3__ {int /*<<< orphan*/  length; } ;
struct iucv_tty_buffer {TYPE_2__* mbuf; TYPE_1__ msg; } ;
typedef  int gfp_t ;
struct TYPE_4__ {scalar_t__ datalen; int /*<<< orphan*/  type; int /*<<< orphan*/  version; } ;

/* Variables and functions */
 int GFP_DMA ; 
 int /*<<< orphan*/  FUNC0 (size_t) ; 
 int /*<<< orphan*/  MSG_TYPE_DATA ; 
 int /*<<< orphan*/  MSG_VERSION ; 
 int /*<<< orphan*/  hvc_iucv_mempool ; 
 TYPE_2__* FUNC1 (int /*<<< orphan*/ ,int) ; 
 struct iucv_tty_buffer* FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct iucv_tty_buffer*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct iucv_tty_buffer*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static struct iucv_tty_buffer *FUNC5(size_t size, gfp_t flags)
{
	struct iucv_tty_buffer *bufp;

	bufp = FUNC2(hvc_iucv_mempool, flags);
	if (!bufp)
		return NULL;
	FUNC4(bufp, 0, sizeof(*bufp));

	if (size > 0) {
		bufp->msg.length = FUNC0(size);
		bufp->mbuf = FUNC1(bufp->msg.length, flags | GFP_DMA);
		if (!bufp->mbuf) {
			FUNC3(bufp, hvc_iucv_mempool);
			return NULL;
		}
		bufp->mbuf->version = MSG_VERSION;
		bufp->mbuf->type    = MSG_TYPE_DATA;
		bufp->mbuf->datalen = (u16) size;
	}
	return bufp;
}