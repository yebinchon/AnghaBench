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
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  DSI_GNQ ; 
 int /*<<< orphan*/  FEAT_DSI_GNQ ; 
 int FUNC1 (struct platform_device*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static unsigned FUNC3(struct platform_device *dsidev)
{
	int val;

	/* line buffer on OMAP3 is 1024 x 24bits */
	/* XXX: for some reason using full buffer size causes
	 * considerable TX slowdown with update sizes that fill the
	 * whole buffer */
	if (!FUNC2(FEAT_DSI_GNQ))
		return 1023 * 3;

	val = FUNC1(dsidev, DSI_GNQ, 14, 12); /* VP1_LINE_BUFFER_SIZE */

	switch (val) {
	case 1:
		return 512 * 3;		/* 512x24 bits */
	case 2:
		return 682 * 3;		/* 682x24 bits */
	case 3:
		return 853 * 3;		/* 853x24 bits */
	case 4:
		return 1024 * 3;	/* 1024x24 bits */
	case 5:
		return 1194 * 3;	/* 1194x24 bits */
	case 6:
		return 1365 * 3;	/* 1365x24 bits */
	case 7:
		return 1920 * 3;	/* 1920x24 bits */
	default:
		FUNC0();
		return 0;
	}
}