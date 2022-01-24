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
struct csi_priv {scalar_t__ dest; scalar_t__ fim; int /*<<< orphan*/  src_sd; int /*<<< orphan*/  csi; } ;

/* Variables and functions */
 scalar_t__ IPU_CSI_DEST_IDMAC ; 
 int /*<<< orphan*/  FUNC0 (struct csi_priv*) ; 
 int /*<<< orphan*/  FUNC1 (struct csi_priv*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  s_stream ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  video ; 

__attribute__((used)) static void FUNC5(struct csi_priv *priv)
{
	if (priv->dest == IPU_CSI_DEST_IDMAC)
		FUNC1(priv);

	/*
	 * Disable the CSI asap, after syncing with the last EOF.
	 * Doing so after the IDMA channel is disabled has shown to
	 * create hard system-wide hangs.
	 */
	FUNC3(priv->csi);

	/* stop upstream */
	FUNC4(priv->src_sd, video, s_stream, 0);

	if (priv->dest == IPU_CSI_DEST_IDMAC) {
		FUNC0(priv);

		/* stop the frame interval monitor */
		if (priv->fim)
			FUNC2(priv->fim, NULL, false);
	}
}