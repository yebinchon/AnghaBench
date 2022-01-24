#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  reset_n_io; } ;
struct nfcmrvl_private {int /*<<< orphan*/  dev; TYPE_1__ config; int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  NFCMRVL_PHY_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int,int) ; 

void FUNC5(struct nfcmrvl_private *priv)
{
	/* Reset possible fault of previous session */
	FUNC0(NFCMRVL_PHY_ERROR, &priv->flags);

	if (FUNC1(priv->config.reset_n_io)) {
		FUNC3(priv->dev, "reset the chip\n");
		FUNC2(priv->config.reset_n_io, 0);
		FUNC4(5000, 10000);
		FUNC2(priv->config.reset_n_io, 1);
	} else
		FUNC3(priv->dev, "no reset available on this interface\n");
}