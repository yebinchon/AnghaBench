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
struct seq_file {int /*<<< orphan*/  private; } ;
typedef  void device ;
typedef  int /*<<< orphan*/  loff_t ;

/* Variables and functions */
 void* FUNC0 (void*) ; 

__attribute__((used)) static void *FUNC1(struct seq_file *sfile, loff_t *pos)
{
	struct device *dev = NULL;
	loff_t n = *pos;

	while ((dev = FUNC0(dev))) {
		if (!n--)
			break;
		sfile->private++;
	}
	return dev;
}