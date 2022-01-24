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
struct usbhs_priv {int dummy; } ;
struct usbhs_pkt {int /*<<< orphan*/  pipe; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  has_usb_dmac ; 
 int /*<<< orphan*/  FUNC1 (struct usbhs_priv*,int /*<<< orphan*/ ) ; 
 struct usbhs_priv* FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct usbhs_pkt*,int*) ; 

__attribute__((used)) static int FUNC4(struct usbhs_pkt *pkt, int *is_done)
{
	struct usbhs_priv *priv = FUNC2(pkt->pipe);

	FUNC0(FUNC1(priv, has_usb_dmac));

	return FUNC3(pkt, is_done);
}