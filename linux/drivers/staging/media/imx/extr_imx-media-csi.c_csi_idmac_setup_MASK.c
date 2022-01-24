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
struct csi_priv {int /*<<< orphan*/  idmac_ch; int /*<<< orphan*/  smfc; int /*<<< orphan*/  ipu; } ;

/* Variables and functions */
 int FUNC0 (struct csi_priv*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct csi_priv *priv)
{
	int ret;

	ret = FUNC0(priv);
	if (ret)
		return ret;

	FUNC1(priv->idmac_ch);
	FUNC2(priv->ipu);

	FUNC5(priv->smfc);

	/* set buffers ready */
	FUNC4(priv->idmac_ch, 0);
	FUNC4(priv->idmac_ch, 1);

	/* enable the channels */
	FUNC3(priv->idmac_ch);

	return 0;
}