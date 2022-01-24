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
struct uwire_spi {int /*<<< orphan*/  bitbang; } ;
struct platform_device {int dummy; } ;

/* Variables and functions */
 struct uwire_spi* FUNC0 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct uwire_spi*) ; 

__attribute__((used)) static int FUNC3(struct platform_device *pdev)
{
	struct uwire_spi	*uwire = FUNC0(pdev);

	// FIXME remove all child devices, somewhere ...

	FUNC1(&uwire->bitbang);
	FUNC2(uwire);
	return 0;
}