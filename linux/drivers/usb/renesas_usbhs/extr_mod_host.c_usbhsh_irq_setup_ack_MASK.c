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
struct usbhsh_hpriv {int /*<<< orphan*/  setup_ack_done; } ;
struct usbhs_priv {int dummy; } ;
struct usbhs_irq_state {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*) ; 
 struct device* FUNC2 (struct usbhs_priv*) ; 
 struct usbhsh_hpriv* FUNC3 (struct usbhs_priv*) ; 

__attribute__((used)) static int FUNC4(struct usbhs_priv *priv,
				struct usbhs_irq_state *irq_state)
{
	struct usbhsh_hpriv *hpriv = FUNC3(priv);
	struct device *dev = FUNC2(priv);

	FUNC1(dev, "setup packet OK\n");

	FUNC0(&hpriv->setup_ack_done); /* see usbhsh_urb_enqueue() */

	return 0;
}