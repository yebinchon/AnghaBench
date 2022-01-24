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
struct ulpi_ops {int dummy; } ;
struct ulpi {struct ulpi_ops const* ops; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 struct ulpi* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (struct ulpi*) ; 
 struct ulpi* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct device*,struct ulpi*) ; 

struct ulpi *FUNC4(struct device *dev,
				     const struct ulpi_ops *ops)
{
	struct ulpi *ulpi;
	int ret;

	ulpi = FUNC2(sizeof(*ulpi), GFP_KERNEL);
	if (!ulpi)
		return FUNC0(-ENOMEM);

	ulpi->ops = ops;

	ret = FUNC3(dev, ulpi);
	if (ret) {
		FUNC1(ulpi);
		return FUNC0(ret);
	}

	return ulpi;
}