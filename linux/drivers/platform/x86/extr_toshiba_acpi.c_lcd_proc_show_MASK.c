#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct toshiba_acpi_dev {TYPE_2__* backlight_dev; } ;
struct seq_file {struct toshiba_acpi_dev* private; } ;
struct TYPE_3__ {int max_brightness; } ;
struct TYPE_4__ {TYPE_1__ props; } ;

/* Variables and functions */
 int ENODEV ; 
 int FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (struct seq_file*,char*,int) ; 

__attribute__((used)) static int FUNC3(struct seq_file *m, void *v)
{
	struct toshiba_acpi_dev *dev = m->private;
	int levels;
	int value;

	if (!dev->backlight_dev)
		return -ENODEV;

	levels = dev->backlight_dev->props.max_brightness + 1;
	value = FUNC0(dev->backlight_dev);
	if (value < 0) {
		FUNC1("Error reading LCD brightness\n");
		return value;
	}

	FUNC2(m, "brightness:              %d\n", value);
	FUNC2(m, "brightness_levels:       %d\n", levels);

	return 0;
}