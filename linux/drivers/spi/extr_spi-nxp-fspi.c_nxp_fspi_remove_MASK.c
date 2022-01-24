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
struct nxp_fspi {int /*<<< orphan*/  lock; scalar_t__ iobase; } ;

/* Variables and functions */
 scalar_t__ FSPI_MCR0 ; 
 int /*<<< orphan*/  FSPI_MCR0_MDIS ; 
 int /*<<< orphan*/  FUNC0 (struct nxp_fspi*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct nxp_fspi*) ; 
 struct nxp_fspi* FUNC3 (struct platform_device*) ; 

__attribute__((used)) static int FUNC4(struct platform_device *pdev)
{
	struct nxp_fspi *f = FUNC3(pdev);

	/* disable the hardware */
	FUNC0(f, FSPI_MCR0_MDIS, f->iobase + FSPI_MCR0);

	FUNC2(f);

	FUNC1(&f->lock);

	return 0;
}