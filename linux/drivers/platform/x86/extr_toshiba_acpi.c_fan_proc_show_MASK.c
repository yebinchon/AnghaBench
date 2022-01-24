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
typedef  scalar_t__ u32 ;
struct toshiba_acpi_dev {int force_fan; } ;
struct seq_file {struct toshiba_acpi_dev* private; } ;

/* Variables and functions */
 int EIO ; 
 scalar_t__ FUNC0 (struct toshiba_acpi_dev*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC1 (struct seq_file*,char*,int) ; 

__attribute__((used)) static int FUNC2(struct seq_file *m, void *v)
{
	struct toshiba_acpi_dev *dev = m->private;
	u32 value;

	if (FUNC0(dev, &value))
		return -EIO;

	FUNC1(m, "running:                 %d\n", (value > 0));
	FUNC1(m, "force_on:                %d\n", dev->force_fan);

	return 0;
}