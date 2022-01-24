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
struct vnt_private {int mac_hw; int /*<<< orphan*/  hw; int /*<<< orphan*/  permanent_net_addr; } ;

/* Variables and functions */
 int EAGAIN ; 
 int ENODEV ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct vnt_private*) ; 
 int /*<<< orphan*/  FUNC3 (struct vnt_private*) ; 
 int /*<<< orphan*/  FUNC4 (struct vnt_private*) ; 

int FUNC5(struct vnt_private *priv)
{
	if (!(FUNC3(priv)))
		return -EAGAIN;

	FUNC0(priv->hw, priv->permanent_net_addr);

	FUNC2(priv);

	if (FUNC1(priv->hw))
		return -ENODEV;

	priv->mac_hw = true;

	FUNC4(priv);

	return 0;
}