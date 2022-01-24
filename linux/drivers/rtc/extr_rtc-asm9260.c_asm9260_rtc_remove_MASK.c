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
struct platform_device {int dummy; } ;
struct asm9260_rtc_priv {int /*<<< orphan*/  clk; scalar_t__ iobase; } ;

/* Variables and functions */
 int /*<<< orphan*/  BM_AMR_OFF ; 
 scalar_t__ HW_AMR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
 struct asm9260_rtc_priv* FUNC2 (struct platform_device*) ; 

__attribute__((used)) static int FUNC3(struct platform_device *pdev)
{
	struct asm9260_rtc_priv *priv = FUNC2(pdev);

	/* Disable alarm matching */
	FUNC1(BM_AMR_OFF, priv->iobase + HW_AMR);
	FUNC0(priv->clk);
	return 0;
}