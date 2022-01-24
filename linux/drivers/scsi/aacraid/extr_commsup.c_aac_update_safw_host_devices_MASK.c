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
struct aac_dev {int dummy; } ;

/* Variables and functions */
 int AAC_BUS_TARGET_LOOP ; 
 int /*<<< orphan*/  FUNC0 (struct aac_dev*,int,int) ; 
 int FUNC1 (struct aac_dev*,int,int) ; 
 scalar_t__ FUNC2 (struct aac_dev*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct aac_dev*,int,int) ; 
 int FUNC4 (struct aac_dev*) ; 
 int FUNC5 (int) ; 
 int FUNC6 (int) ; 
 scalar_t__ FUNC7 (int) ; 

__attribute__((used)) static int FUNC8(struct aac_dev *dev)
{
	int i;
	int bus;
	int target;
	int is_exposed = 0;
	int rcode = 0;

	rcode = FUNC4(dev);
	if (FUNC7(rcode < 0)) {
		goto out;
	}

	for (i = 0; i < AAC_BUS_TARGET_LOOP; i++) {

		bus = FUNC5(i);
		target = FUNC6(i);

		is_exposed = FUNC1(dev, bus, target);

		if (FUNC2(dev, bus, target) && !is_exposed)
			FUNC0(dev, bus, target);
		else if (!FUNC2(dev, bus, target) &&
								is_exposed)
			FUNC3(dev, bus, target);
	}
out:
	return rcode;
}