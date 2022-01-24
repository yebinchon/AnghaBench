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
struct usbhs_pkt {int dummy; } ;
struct usbhs_pipe {int dummy; } ;

/* Variables and functions */
 struct usbhs_pkt* FUNC0 (struct usbhs_pipe*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct usbhs_priv*,struct usbhs_pkt*) ; 

__attribute__((used)) static void FUNC2(struct usbhs_priv *priv,
				   struct usbhs_pipe *pipe)
{
	struct usbhs_pkt *pkt;

	while (1) {
		pkt = FUNC0(pipe, NULL);
		if (!pkt)
			break;

		/*
		 * if all packet are gone, usbhsh_endpoint_disable()
		 * will be called.
		 * then, attached device/endpoint/pipe will be detached
		 */
		FUNC1(priv, pkt);
	}
}