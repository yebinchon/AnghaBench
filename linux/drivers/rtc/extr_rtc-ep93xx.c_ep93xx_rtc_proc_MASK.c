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
 int /*<<< orphan*/  FUNC0 (struct device*,unsigned short*,unsigned short*) ; 
 int /*<<< orphan*/  FUNC1 (struct seq_file*,char*,unsigned short) ; 

__attribute__((used)) static int FUNC2(struct device *dev, struct seq_file *seq)
{
	unsigned short preload, delete;

	FUNC0(dev, &preload, &delete);

	FUNC1(seq, "preload\t\t: %d\n", preload);
	FUNC1(seq, "delete\t\t: %d\n", delete);

	return 0;
}