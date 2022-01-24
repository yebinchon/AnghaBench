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
struct vnt_private {int mac_hw; int /*<<< orphan*/  hw; int /*<<< orphan*/  abyCurrentNetAddr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct vnt_private*) ; 
 int ENODEV ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct vnt_private*) ; 

__attribute__((used)) static int FUNC4(struct vnt_private *priv)
{
	FUNC1(priv->hw, priv->abyCurrentNetAddr);

	FUNC3(priv);

	if (FUNC2(priv->hw))
		return -ENODEV;

	priv->mac_hw = true;

	FUNC0(priv);

	return 0;
}