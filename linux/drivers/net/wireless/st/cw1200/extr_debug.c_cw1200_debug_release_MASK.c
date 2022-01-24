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
struct cw1200_debug_priv {int /*<<< orphan*/  debugfs_phy; } ;
struct cw1200_common {struct cw1200_debug_priv* debug; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct cw1200_debug_priv*) ; 

void FUNC2(struct cw1200_common *priv)
{
	struct cw1200_debug_priv *d = priv->debug;
	if (d) {
		FUNC0(d->debugfs_phy);
		priv->debug = NULL;
		FUNC1(d);
	}
}