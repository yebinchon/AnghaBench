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
struct fsl_qspi {int /*<<< orphan*/  lock; scalar_t__ iobase; } ;

/* Variables and functions */
 scalar_t__ QUADSPI_MCR ; 
 int QUADSPI_MCR_MDIS_MASK ; 
 scalar_t__ QUADSPI_RSER ; 
 int /*<<< orphan*/  FUNC0 (struct fsl_qspi*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct fsl_qspi* FUNC2 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct fsl_qspi*,int,scalar_t__) ; 

__attribute__((used)) static int FUNC4(struct platform_device *pdev)
{
	struct fsl_qspi *q = FUNC2(pdev);

	/* disable the hardware */
	FUNC3(q, QUADSPI_MCR_MDIS_MASK, q->iobase + QUADSPI_MCR);
	FUNC3(q, 0x0, q->iobase + QUADSPI_RSER);

	FUNC0(q);

	FUNC1(&q->lock);

	return 0;
}