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
struct xmit_buf {int /*<<< orphan*/ * pxmit_urb; scalar_t__ dma_transfer_addr; int /*<<< orphan*/  pallocated_buf; int /*<<< orphan*/  pbuf; } ;
struct adapter {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  XMITBUF_ALIGN_SZ ; 
 int _FAIL ; 
 int _SUCCESS ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC4(struct adapter *padapter,
			       struct xmit_buf *pxmitbuf, u32 alloc_sz)
{
	int i;

	pxmitbuf->pallocated_buf = FUNC2(alloc_sz, GFP_KERNEL);
	if (!pxmitbuf->pallocated_buf)
		return _FAIL;

	pxmitbuf->pbuf = FUNC1(pxmitbuf->pallocated_buf, XMITBUF_ALIGN_SZ);
	pxmitbuf->dma_transfer_addr = 0;

	for (i = 0; i < 8; i++) {
		pxmitbuf->pxmit_urb[i] = FUNC3(0, GFP_KERNEL);
		if (!pxmitbuf->pxmit_urb[i]) {
			FUNC0("pxmitbuf->pxmit_urb[i]==NULL");
			return _FAIL;
		}
	}
	return _SUCCESS;
}