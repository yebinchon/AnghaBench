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
 int /*<<< orphan*/  neponset_pcmcia_ops ; 
 int FUNC0 (struct sa1111_dev*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sa11xx_drv_pcmcia_add_one ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

int FUNC2(struct sa1111_dev *sadev)
{
	FUNC1(&neponset_pcmcia_ops);
	return FUNC0(sadev, &neponset_pcmcia_ops,
				 sa11xx_drv_pcmcia_add_one);
}