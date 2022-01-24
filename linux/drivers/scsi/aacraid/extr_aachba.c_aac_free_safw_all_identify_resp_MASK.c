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
typedef  int /*<<< orphan*/  u32 ;
struct aac_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct aac_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct aac_dev*,int) ; 
 int FUNC2 (struct aac_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct aac_dev*,int) ; 

__attribute__((used)) static inline void FUNC4(struct aac_dev *dev,
	int lun_count)
{
	int luns;
	int i;
	u32 bus;
	u32 target;

	luns = FUNC2(dev);

	if (luns < lun_count)
		lun_count = luns;
	else if (lun_count < 0)
		lun_count = luns;

	for (i = 0; i < lun_count; i++) {
		bus = FUNC1(dev, i);
		target = FUNC3(dev, i);

		FUNC0(dev, bus, target);
	}
}