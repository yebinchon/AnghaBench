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
struct csi_priv {int last_eof; int /*<<< orphan*/  sd; int /*<<< orphan*/  last_eof_comp; int /*<<< orphan*/  irqlock; } ;

/* Variables and functions */
 int /*<<< orphan*/  IMX_MEDIA_EOF_TIMEOUT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct csi_priv *priv)
{
	unsigned long flags;
	int ret;

	/* mark next EOF interrupt as the last before stream off */
	FUNC1(&priv->irqlock, flags);
	priv->last_eof = true;
	FUNC2(&priv->irqlock, flags);

	/*
	 * and then wait for interrupt handler to mark completion.
	 */
	ret = FUNC4(
		&priv->last_eof_comp, FUNC0(IMX_MEDIA_EOF_TIMEOUT));
	if (ret == 0)
		FUNC3(&priv->sd, "wait last EOF timeout\n");
}