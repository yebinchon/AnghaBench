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
struct xmit_priv {int /*<<< orphan*/  SdioXmitTerminate; int /*<<< orphan*/  SdioXmitStart; } ;
struct hal_com_data {int /*<<< orphan*/  SdioTxFIFOFreePageLock; } ;
struct adapter {struct xmit_priv xmitpriv; } ;
typedef  int /*<<< orphan*/  s32 ;

/* Variables and functions */
 struct hal_com_data* FUNC0 (struct adapter*) ; 
 int /*<<< orphan*/  _SUCCESS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

s32 FUNC3(struct adapter *padapter)
{
	struct xmit_priv *xmitpriv = &padapter->xmitpriv;
	struct hal_com_data *phal;


	phal = FUNC0(padapter);

	FUNC2(&phal->SdioTxFIFOFreePageLock);
	FUNC1(&xmitpriv->SdioXmitStart);
	FUNC1(&xmitpriv->SdioXmitTerminate);

	return _SUCCESS;
}