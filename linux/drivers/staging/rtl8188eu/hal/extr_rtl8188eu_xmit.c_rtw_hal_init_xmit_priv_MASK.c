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
struct xmit_priv {int /*<<< orphan*/  xmit_tasklet; } ;
struct adapter {struct xmit_priv xmitpriv; } ;
typedef  int /*<<< orphan*/  s32 ;

/* Variables and functions */
 int /*<<< orphan*/  _SUCCESS ; 
 scalar_t__ rtl8188eu_xmit_tasklet ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,void (*) (unsigned long),unsigned long) ; 

s32 FUNC1(struct adapter *adapt)
{
	struct xmit_priv *pxmitpriv = &adapt->xmitpriv;

	FUNC0(&pxmitpriv->xmit_tasklet,
		     (void(*)(unsigned long))rtl8188eu_xmit_tasklet,
		     (unsigned long)adapt);
	return _SUCCESS;
}