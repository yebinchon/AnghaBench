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

/* Variables and functions */
 int /*<<< orphan*/  DSI_DSIPHY_CFG10 ; 
 int /*<<< orphan*/  FUNC0 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static void FUNC1(struct platform_device *dsidev)
{
	/* Disable lane override */
	FUNC0(dsidev, DSI_DSIPHY_CFG10, 0, 27, 27); /* ENLPTXSCPDAT */
	/* Reset the lane override configuration */
	/* REGLPTXSCPDAT4TO0DXDY */
	FUNC0(dsidev, DSI_DSIPHY_CFG10, 0, 22, 17);
}