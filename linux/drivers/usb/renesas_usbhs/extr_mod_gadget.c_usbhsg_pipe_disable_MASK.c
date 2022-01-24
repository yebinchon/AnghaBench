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
struct usbhsg_uep {int dummy; } ;
struct usbhs_pkt {int dummy; } ;
struct usbhs_pipe {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ESHUTDOWN ; 
 int /*<<< orphan*/  FUNC0 (struct usbhs_pipe*) ; 
 struct usbhs_pkt* FUNC1 (struct usbhs_pipe*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct usbhs_pkt*) ; 
 int /*<<< orphan*/  FUNC3 (struct usbhsg_uep*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct usbhs_pipe* FUNC4 (struct usbhsg_uep*) ; 

__attribute__((used)) static int FUNC5(struct usbhsg_uep *uep)
{
	struct usbhs_pipe *pipe = FUNC4(uep);
	struct usbhs_pkt *pkt;

	while (1) {
		pkt = FUNC1(pipe, NULL);
		if (!pkt)
			break;

		FUNC3(uep, FUNC2(pkt), -ESHUTDOWN);
	}

	FUNC0(pipe);

	return 0;
}