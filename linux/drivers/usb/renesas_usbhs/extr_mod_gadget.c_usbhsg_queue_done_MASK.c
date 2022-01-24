#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct usbhsg_uep {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  actual; } ;
struct usbhsg_request {TYPE_1__ req; } ;
struct usbhs_priv {int dummy; } ;
struct usbhs_pkt {int /*<<< orphan*/  actual; struct usbhs_pipe* pipe; } ;
struct usbhs_pipe {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct usbhsg_uep*,struct usbhsg_request*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct usbhs_priv*,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (struct usbhs_priv*,unsigned long) ; 
 struct usbhsg_uep* FUNC3 (struct usbhs_pipe*) ; 
 struct usbhsg_request* FUNC4 (struct usbhs_pkt*) ; 

__attribute__((used)) static void FUNC5(struct usbhs_priv *priv, struct usbhs_pkt *pkt)
{
	struct usbhs_pipe *pipe = pkt->pipe;
	struct usbhsg_uep *uep = FUNC3(pipe);
	struct usbhsg_request *ureq = FUNC4(pkt);
	unsigned long flags;

	ureq->req.actual = pkt->actual;

	FUNC1(priv, flags);
	if (uep)
		FUNC0(uep, ureq, 0);
	FUNC2(priv, flags);
}