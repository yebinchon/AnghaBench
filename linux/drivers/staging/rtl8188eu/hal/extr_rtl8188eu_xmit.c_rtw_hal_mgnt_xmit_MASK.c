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
struct xmit_priv {int /*<<< orphan*/  frag_len; } ;
struct xmit_frame {int dummy; } ;
struct adapter {int /*<<< orphan*/  pmondev; struct xmit_priv xmitpriv; } ;
typedef  int /*<<< orphan*/  s32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct xmit_frame*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct adapter*,struct xmit_frame*) ; 

s32 FUNC2(struct adapter *adapt, struct xmit_frame *pmgntframe)
{
	struct xmit_priv *xmitpriv = &adapt->xmitpriv;

	FUNC0(adapt->pmondev, pmgntframe, xmitpriv->frag_len);
	return FUNC1(adapt, pmgntframe);
}