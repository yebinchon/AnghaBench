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
struct imx7_csi {int last_eof; int /*<<< orphan*/  underrun_buf; int /*<<< orphan*/  dev; int /*<<< orphan*/  sd; int /*<<< orphan*/  last_eof_completion; int /*<<< orphan*/  irqlock; } ;

/* Variables and functions */
 int /*<<< orphan*/  IMX_MEDIA_EOF_TIMEOUT ; 
 int /*<<< orphan*/  VB2_BUF_STATE_ERROR ; 
 int /*<<< orphan*/  FUNC0 (struct imx7_csi*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct imx7_csi*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 unsigned long FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*) ; 
 int FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC8(struct imx7_csi *csi)
{
	unsigned long timeout_jiffies;
	unsigned long flags;
	int ret;

	/* mark next EOF interrupt as the last before stream off */
	FUNC4(&csi->irqlock, flags);
	csi->last_eof = true;
	FUNC5(&csi->irqlock, flags);

	/*
	 * and then wait for interrupt handler to mark completion.
	 */
	timeout_jiffies = FUNC3(IMX_MEDIA_EOF_TIMEOUT);
	ret = FUNC7(&csi->last_eof_completion,
					  timeout_jiffies);
	if (ret == 0)
		FUNC6(&csi->sd, "wait last EOF timeout\n");

	FUNC1(csi);

	FUNC0(csi, VB2_BUF_STATE_ERROR);

	FUNC2(csi->dev, &csi->underrun_buf);
}