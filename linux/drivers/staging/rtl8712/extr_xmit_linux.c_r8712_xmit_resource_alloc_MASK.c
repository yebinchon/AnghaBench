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
struct xmit_buf {int /*<<< orphan*/ * pxmit_urb; } ;
struct _adapter {int /*<<< orphan*/  pnetdev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC3(struct _adapter *padapter,
			      struct xmit_buf *pxmitbuf)
{
	int i;

	for (i = 0; i < 8; i++) {
		pxmitbuf->pxmit_urb[i] = FUNC2(0, GFP_KERNEL);
		if (!pxmitbuf->pxmit_urb[i]) {
			FUNC1(padapter->pnetdev, "pxmitbuf->pxmit_urb[i] == NULL\n");
			return -ENOMEM;
		}
		FUNC0(pxmitbuf->pxmit_urb[i]);
	}
	return 0;
}