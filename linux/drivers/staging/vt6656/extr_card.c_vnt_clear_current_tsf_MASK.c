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
struct vnt_private {scalar_t__ current_tsf; } ;

/* Variables and functions */
 int /*<<< orphan*/  MAC_REG_TFTCTL ; 
 int /*<<< orphan*/  TFTCTL_TSFCNTRST ; 
 int /*<<< orphan*/  FUNC0 (struct vnt_private*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

bool FUNC1(struct vnt_private *priv)
{
	FUNC0(priv, MAC_REG_TFTCTL, TFTCTL_TSFCNTRST);

	priv->current_tsf = 0;

	return true;
}