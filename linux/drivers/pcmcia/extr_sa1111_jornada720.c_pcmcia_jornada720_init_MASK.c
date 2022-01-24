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
struct sa1111_dev {int dummy; } ;

/* Variables and functions */
 int GRER ; 
 int /*<<< orphan*/  jornada720_pcmcia_ops ; 
 int FUNC0 (struct sa1111_dev*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sa11xx_drv_pcmcia_add_one ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

int FUNC2(struct sa1111_dev *sadev)
{
	/* Fixme: why messing around with SA11x0's GPIO1? */
	GRER |= 0x00000002;

	FUNC1(&jornada720_pcmcia_ops);
	return FUNC0(sadev, &jornada720_pcmcia_ops,
				 sa11xx_drv_pcmcia_add_one);
}