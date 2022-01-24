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
struct hv_uio_private_data {int /*<<< orphan*/  info; } ;
struct hv_device {int /*<<< orphan*/  channel; } ;

/* Variables and functions */
 struct hv_uio_private_data* FUNC0 (struct hv_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct hv_device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct hv_device*,struct hv_uio_private_data*) ; 
 int /*<<< orphan*/  FUNC3 (struct hv_uio_private_data*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC6(struct hv_device *dev)
{
	struct hv_uio_private_data *pdata = FUNC0(dev);

	if (!pdata)
		return 0;

	FUNC4(&pdata->info);
	FUNC2(dev, pdata);
	FUNC1(dev, NULL);

	FUNC5(dev->channel);
	FUNC3(pdata);
	return 0;
}