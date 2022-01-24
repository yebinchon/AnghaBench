#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct seq_file {int dummy; } ;
struct TYPE_3__ {int device; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*) ; 
 TYPE_1__* device_mapping ; 
 int /*<<< orphan*/  FUNC1 (struct seq_file*,char) ; 
 int /*<<< orphan*/  FUNC2 (struct seq_file*,int /*<<< orphan*/ ) ; 

void FUNC3(struct seq_file *m, u32 odev)
{
	int i, count = 0;

	for (i = 0; i < FUNC0(device_mapping); i++) {
		if (odev & device_mapping[i].device) {
			if (count > 0)
				FUNC1(m, ',');

			FUNC2(m, device_mapping[i].name);
			count++;
		}
	}

	FUNC1(m, '\n');
}