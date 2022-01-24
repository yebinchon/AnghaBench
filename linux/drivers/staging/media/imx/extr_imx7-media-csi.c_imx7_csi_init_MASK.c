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
struct imx7_csi {int is_init; int /*<<< orphan*/  mclk; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct imx7_csi*) ; 
 int /*<<< orphan*/  FUNC2 (struct imx7_csi*) ; 
 int /*<<< orphan*/  FUNC3 (struct imx7_csi*) ; 

__attribute__((used)) static int FUNC4(struct imx7_csi *csi)
{
	int ret;

	if (csi->is_init)
		return 0;

	ret = FUNC0(csi->mclk);
	if (ret < 0)
		return ret;
	FUNC2(csi);
	FUNC3(csi);
	FUNC1(csi);

	csi->is_init = true;

	return 0;
}