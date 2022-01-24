#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct spi_device {int /*<<< orphan*/  chip_select; int /*<<< orphan*/  master; } ;
struct sh_sci_spi {TYPE_1__* info; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* chip_select ) (TYPE_1__*,int /*<<< orphan*/ ,int) ;} ;

/* Variables and functions */
 struct sh_sci_spi* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC2(struct spi_device *dev, int value)
{
	struct sh_sci_spi *sp = FUNC0(dev->master);

	if (sp->info->chip_select)
		(sp->info->chip_select)(sp->info, dev->chip_select, value);
}