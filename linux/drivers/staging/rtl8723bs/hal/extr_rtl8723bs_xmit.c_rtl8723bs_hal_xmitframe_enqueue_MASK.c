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
struct xmit_priv {int /*<<< orphan*/  SdioXmitStart; int /*<<< orphan*/  xmit_tasklet; int /*<<< orphan*/  tx_drop; } ;
struct xmit_frame {int dummy; } ;
struct adapter {struct xmit_priv xmitpriv; } ;
typedef  scalar_t__ s32 ;

/* Variables and functions */
 scalar_t__ _SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct xmit_priv*,struct xmit_frame*) ; 
 scalar_t__ FUNC2 (struct adapter*,struct xmit_frame*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

s32	FUNC4(
	struct adapter *padapter, struct xmit_frame *pxmitframe
)
{
	struct xmit_priv *pxmitpriv = &padapter->xmitpriv;
	s32 err;

	err = FUNC2(padapter, pxmitframe);
	if (err != _SUCCESS) {
		FUNC1(pxmitpriv, pxmitframe);

		pxmitpriv->tx_drop++;
	} else {
#ifdef CONFIG_SDIO_TX_TASKLET
		tasklet_hi_schedule(&pxmitpriv->xmit_tasklet);
#else
		FUNC0(&pxmitpriv->SdioXmitStart);
#endif
	}

	return err;

}