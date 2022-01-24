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
struct xmit_buf {int /*<<< orphan*/  pallocated_buf; int /*<<< orphan*/ * pxmit_urb; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

void FUNC2(struct xmit_buf *pxmitbuf)
{
	int i;

	for (i = 0; i < 8; i++)
		FUNC1(pxmitbuf->pxmit_urb[i]);

	FUNC0(pxmitbuf->pallocated_buf);
}