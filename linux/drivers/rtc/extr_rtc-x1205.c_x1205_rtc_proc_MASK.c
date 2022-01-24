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
struct seq_file {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct seq_file*,char*,int,...) ; 
 int /*<<< orphan*/  FUNC1 (struct device*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int*) ; 

__attribute__((used)) static int FUNC4(struct device *dev, struct seq_file *seq)
{
	int err, dtrim, atrim;

	err = FUNC3(FUNC1(dev), &dtrim);
	if (!err)
		FUNC0(seq, "digital_trim\t: %d ppm\n", dtrim);

	err = FUNC2(FUNC1(dev), &atrim);
	if (!err)
		FUNC0(seq, "analog_trim\t: %d.%02d pF\n",
			atrim / 1000, atrim % 1000);
	return 0;
}