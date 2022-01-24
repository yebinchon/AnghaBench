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
struct regulator_dev {int dummy; } ;
struct pcap_regulator {int en; int /*<<< orphan*/  reg; } ;

/* Variables and functions */
 int EINVAL ; 
 int NA ; 
 int FUNC0 (void*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 void* FUNC1 (struct regulator_dev*) ; 
 size_t FUNC2 (struct regulator_dev*) ; 
 struct pcap_regulator* vreg_table ; 

__attribute__((used)) static int FUNC3(struct regulator_dev *rdev)
{
	struct pcap_regulator *vreg = &vreg_table[FUNC2(rdev)];
	void *pcap = FUNC1(rdev);

	if (vreg->en == NA)
		return -EINVAL;

	return FUNC0(pcap, vreg->reg, 1 << vreg->en, 0);
}