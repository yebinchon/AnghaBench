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
struct imx7_csi {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CSI_CSISR ; 
 int /*<<< orphan*/  FUNC0 (struct imx7_csi*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct imx7_csi*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static u32 FUNC2(struct imx7_csi *csi)
{
	u32 isr;

	isr = FUNC0(csi, CSI_CSISR);
	FUNC1(csi, isr, CSI_CSISR);

	return isr;
}