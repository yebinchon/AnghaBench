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
struct vnt_private {scalar_t__ hw; scalar_t__ pcid; scalar_t__ PortOffset; scalar_t__ mac_hw; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 

__attribute__((used)) static void FUNC4(struct vnt_private *priv)
{
	if (!priv)
		return;

	if (priv->mac_hw)
		FUNC1(priv->hw);

	if (priv->PortOffset)
		FUNC2(priv->PortOffset);

	if (priv->pcid)
		FUNC3(priv->pcid);

	if (priv->hw)
		FUNC0(priv->hw);
}