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
struct usbhsg_uep {int /*<<< orphan*/  ep; } ;
struct TYPE_2__ {int status; } ;
struct usbhsg_request {TYPE_1__ req; } ;
struct usbhsg_gpriv {int dummy; } ;
struct usbhs_priv {int dummy; } ;
struct usbhs_pipe {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct device*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (struct usbhs_pipe*) ; 
 int /*<<< orphan*/  FUNC5 (struct usbhs_priv*) ; 
 struct device* FUNC6 (struct usbhsg_gpriv*) ; 
 struct usbhs_priv* FUNC7 (struct usbhsg_gpriv*) ; 
 struct usbhsg_gpriv* FUNC8 (struct usbhsg_uep*) ; 
 struct usbhs_pipe* FUNC9 (struct usbhsg_uep*) ; 

__attribute__((used)) static void FUNC10(struct usbhsg_uep *uep,
			       struct usbhsg_request *ureq,
			       int status)
{
	struct usbhsg_gpriv *gpriv = FUNC8(uep);
	struct usbhs_pipe *pipe = FUNC9(uep);
	struct device *dev = FUNC6(gpriv);
	struct usbhs_priv *priv = FUNC7(gpriv);

	if (pipe)
		FUNC0(dev, "pipe %d : queue pop\n", FUNC4(pipe));

	ureq->req.status = status;
	FUNC2(FUNC5(priv));
	FUNC3(&uep->ep, &ureq->req);
	FUNC1(FUNC5(priv));
}