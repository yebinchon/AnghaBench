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
struct meson_spicc_device {int /*<<< orphan*/  core; scalar_t__ base; } ;

/* Variables and functions */
 scalar_t__ SPICC_CONREG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct meson_spicc_device* FUNC1 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC3(struct platform_device *pdev)
{
	struct meson_spicc_device *spicc = FUNC1(pdev);

	/* Disable SPI */
	FUNC2(0, spicc->base + SPICC_CONREG);

	FUNC0(spicc->core);

	return 0;
}