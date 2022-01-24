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
 int /*<<< orphan*/  DSI_CTRL ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int EIO ; 
 int /*<<< orphan*/  FUNC2 (struct platform_device*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static inline int FUNC4(struct platform_device *dsidev, bool enable)
{
	FUNC0("dsi_if_enable(%d)\n", enable);

	enable = enable ? 1 : 0;
	FUNC2(dsidev, DSI_CTRL, enable, 0, 0); /* IF_EN */

	if (FUNC3(dsidev, DSI_CTRL, 0, enable) != enable) {
			FUNC1("Failed to set dsi_if_enable to %d\n", enable);
			return -EIO;
	}

	return 0;
}