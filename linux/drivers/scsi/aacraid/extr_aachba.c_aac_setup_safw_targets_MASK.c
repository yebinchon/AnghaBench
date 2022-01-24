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
 int /*<<< orphan*/  FUNC0 (struct aac_dev*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct aac_dev*) ; 
 int FUNC2 (struct aac_dev*) ; 
 int FUNC3 (struct aac_dev*) ; 
 int FUNC4 (struct aac_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct aac_dev*) ; 
 scalar_t__ FUNC6 (int) ; 

__attribute__((used)) static int FUNC7(struct aac_dev *dev)
{
	int rcode = 0;

	rcode = FUNC2(dev);
	if (FUNC6(rcode < 0))
		goto out;

	rcode = FUNC4(dev);
	if (FUNC6(rcode < 0))
		goto out;

	rcode = FUNC3(dev);
	if (FUNC6(rcode < 0))
		goto free_ciss_luns;

	FUNC5(dev);

	FUNC0(dev, -1);
free_ciss_luns:
	FUNC1(dev);
out:
	return rcode;
}