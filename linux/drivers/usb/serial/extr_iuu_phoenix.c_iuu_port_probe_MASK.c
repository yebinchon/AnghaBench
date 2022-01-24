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
struct usb_serial_port {int dummy; } ;
struct iuu_private {struct iuu_private* buf; struct iuu_private* writebuf; int /*<<< orphan*/  lock; int /*<<< orphan*/  vcc; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC0 (struct usb_serial_port*) ; 
 int /*<<< orphan*/  FUNC1 (struct iuu_private*) ; 
 void* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct usb_serial_port*,struct iuu_private*) ; 
 int /*<<< orphan*/  vcc_default ; 

__attribute__((used)) static int FUNC5(struct usb_serial_port *port)
{
	struct iuu_private *priv;
	int ret;

	priv = FUNC2(sizeof(struct iuu_private), GFP_KERNEL);
	if (!priv)
		return -ENOMEM;

	priv->buf = FUNC2(256, GFP_KERNEL);
	if (!priv->buf) {
		FUNC1(priv);
		return -ENOMEM;
	}

	priv->writebuf = FUNC2(256, GFP_KERNEL);
	if (!priv->writebuf) {
		FUNC1(priv->buf);
		FUNC1(priv);
		return -ENOMEM;
	}

	priv->vcc = vcc_default;
	FUNC3(&priv->lock);

	FUNC4(port, priv);

	ret = FUNC0(port);
	if (ret) {
		FUNC1(priv->writebuf);
		FUNC1(priv->buf);
		FUNC1(priv);
		return ret;
	}

	return 0;
}