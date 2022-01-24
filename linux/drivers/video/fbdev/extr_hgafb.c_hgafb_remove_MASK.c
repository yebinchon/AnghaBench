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
struct fb_info {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct fb_info*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  hga_vram ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 struct fb_info* FUNC4 (struct platform_device*) ; 
 scalar_t__ release_io_port ; 
 scalar_t__ release_io_ports ; 
 int /*<<< orphan*/  FUNC5 (int,int) ; 
 int /*<<< orphan*/  FUNC6 (struct fb_info*) ; 

__attribute__((used)) static int FUNC7(struct platform_device *pdev)
{
	struct fb_info *info = FUNC4(pdev);

	FUNC2();
	FUNC1();

	if (info) {
		FUNC6(info);
		FUNC0(info);
	}

	FUNC3(hga_vram);

	if (release_io_ports)
		FUNC5(0x3b0, 12);

	if (release_io_port)
		FUNC5(0x3bf, 1);

	return 0;
}