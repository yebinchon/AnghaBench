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
struct pic32_spi {int /*<<< orphan*/  clk; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct pic32_spi*) ; 
 int /*<<< orphan*/  FUNC2 (struct pic32_spi*) ; 
 struct pic32_spi* FUNC3 (struct platform_device*) ; 

__attribute__((used)) static int FUNC4(struct platform_device *pdev)
{
	struct pic32_spi *pic32s;

	pic32s = FUNC3(pdev);
	FUNC1(pic32s);
	FUNC0(pic32s->clk);
	FUNC2(pic32s);

	return 0;
}