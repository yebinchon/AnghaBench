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
struct ssusb_mtk {int /*<<< orphan*/  dev; struct mtu3* u3d; } ;
struct mtu3 {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct mtu3*) ; 
 int /*<<< orphan*/  FUNC2 (struct mtu3*) ; 

void FUNC3(struct ssusb_mtk *ssusb)
{
	struct mtu3 *mtu = ssusb->u3d;

	FUNC1(mtu);
	FUNC0(ssusb->dev, false);
	FUNC2(mtu);
}