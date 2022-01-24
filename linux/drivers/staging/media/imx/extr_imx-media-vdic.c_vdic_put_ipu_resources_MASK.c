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
struct vdic_priv {int /*<<< orphan*/ * vdi; int /*<<< orphan*/ * vdi_in_ch_n; int /*<<< orphan*/ * vdi_in_ch; int /*<<< orphan*/ * vdi_in_ch_p; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct vdic_priv *priv)
{
	if (priv->vdi_in_ch_p)
		FUNC1(priv->vdi_in_ch_p);
	priv->vdi_in_ch_p = NULL;

	if (priv->vdi_in_ch)
		FUNC1(priv->vdi_in_ch);
	priv->vdi_in_ch = NULL;

	if (priv->vdi_in_ch_n)
		FUNC1(priv->vdi_in_ch_n);
	priv->vdi_in_ch_n = NULL;

	if (!FUNC0(priv->vdi))
		FUNC2(priv->vdi);
	priv->vdi = NULL;
}