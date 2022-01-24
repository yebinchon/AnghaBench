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
struct imx7_csi {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct imx7_csi*) ; 
 int FUNC1 (struct imx7_csi*) ; 
 int /*<<< orphan*/  FUNC2 (struct imx7_csi*) ; 
 int /*<<< orphan*/  FUNC3 (struct imx7_csi*) ; 

__attribute__((used)) static int FUNC4(struct imx7_csi *csi)
{
	int ret;

	ret = FUNC1(csi);
	if (ret < 0)
		return ret;

	ret = FUNC0(csi);
	if (ret < 0)
		goto dma_stop;

	FUNC3(csi);

	return 0;

dma_stop:
	FUNC2(csi);

	return ret;
}