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
typedef  int u32 ;
struct regulator_dev {TYPE_1__* desc; } ;
struct pcap_regulator {int index; int /*<<< orphan*/  reg; } ;
struct TYPE_2__ {int n_voltages; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void*,int /*<<< orphan*/ ,int*) ; 
 void* FUNC1 (struct regulator_dev*) ; 
 size_t FUNC2 (struct regulator_dev*) ; 
 struct pcap_regulator* vreg_table ; 

__attribute__((used)) static int FUNC3(struct regulator_dev *rdev)
{
	struct pcap_regulator *vreg = &vreg_table[FUNC2(rdev)];
	void *pcap = FUNC1(rdev);
	u32 tmp;

	if (rdev->desc->n_voltages == 1)
		return 0;

	FUNC0(pcap, vreg->reg, &tmp);
	tmp = ((tmp >> vreg->index) & (rdev->desc->n_voltages - 1));
	return tmp;
}