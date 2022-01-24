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
struct usbhsh_request {int dummy; } ;
struct usbhsh_hpriv {int dummy; } ;
struct usbhs_priv {int dummy; } ;
struct usbhs_pkt {int dummy; } ;

/* Variables and functions */
 struct usbhsh_request* FUNC0 (struct usbhs_pkt*) ; 
 struct usbhsh_hpriv* FUNC1 (struct usbhs_priv*) ; 
 int /*<<< orphan*/  FUNC2 (struct usbhsh_hpriv*,struct usbhsh_request*) ; 

__attribute__((used)) static void FUNC3(struct usbhs_priv *priv,
					  struct usbhs_pkt *pkt)
{
	struct usbhsh_request *ureq = FUNC0(pkt);
	struct usbhsh_hpriv *hpriv = FUNC1(priv);

	/* this ureq was connected to urb when usbhsh_urb_enqueue()  */

	FUNC2(hpriv, ureq);
}