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
struct usbhsg_request {int dummy; } ;
struct usbhsg_gpriv {int dummy; } ;
struct usbhs_priv {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct usbhsg_uep*,struct usbhsg_request*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct usbhs_priv*,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (struct usbhs_priv*,unsigned long) ; 
 struct usbhs_priv* FUNC3 (struct usbhsg_gpriv*) ; 
 struct usbhsg_gpriv* FUNC4 (struct usbhsg_uep*) ; 

__attribute__((used)) static void FUNC5(struct usbhsg_uep *uep,
			     struct usbhsg_request *ureq,
			     int status)
{
	struct usbhsg_gpriv *gpriv = FUNC4(uep);
	struct usbhs_priv *priv = FUNC3(gpriv);
	unsigned long flags;

	FUNC1(priv, flags);
	FUNC0(uep, ureq, status);
	FUNC2(priv, flags);
}