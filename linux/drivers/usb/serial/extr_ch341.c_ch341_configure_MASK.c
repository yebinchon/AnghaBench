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
struct usb_device {int /*<<< orphan*/  dev; } ;
struct ch341_private {int /*<<< orphan*/  mcr; int /*<<< orphan*/  lcr; } ;

/* Variables and functions */
 int /*<<< orphan*/  CH341_REQ_READ_VERSION ; 
 int /*<<< orphan*/  CH341_REQ_SERIAL_INIT ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC0 (struct usb_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,unsigned int const) ; 
 int FUNC1 (struct usb_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct usb_device*,struct ch341_private*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct usb_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,char) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 char* FUNC6 (unsigned int const,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct usb_device *dev, struct ch341_private *priv)
{
	const unsigned int size = 2;
	char *buffer;
	int r;

	buffer = FUNC6(size, GFP_KERNEL);
	if (!buffer)
		return -ENOMEM;

	/* expect two bytes 0x27 0x00 */
	r = FUNC0(dev, CH341_REQ_READ_VERSION, 0, 0, buffer, size);
	if (r < 0)
		goto out;
	FUNC4(&dev->dev, "Chip version: 0x%02x\n", buffer[0]);

	r = FUNC1(dev, CH341_REQ_SERIAL_INIT, 0, 0);
	if (r < 0)
		goto out;

	r = FUNC2(dev, priv, priv->lcr);
	if (r < 0)
		goto out;

	r = FUNC3(dev, priv->mcr);

out:	FUNC5(buffer);
	return r;
}