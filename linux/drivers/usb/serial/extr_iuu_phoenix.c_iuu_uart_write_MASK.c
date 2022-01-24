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
typedef  int /*<<< orphan*/  u8 ;
struct usb_serial_port {int dummy; } ;
struct tty_struct {int dummy; } ;
struct iuu_private {int /*<<< orphan*/  lock; scalar_t__ writelen; scalar_t__ writebuf; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 struct iuu_private* FUNC3 (struct usb_serial_port*) ; 

__attribute__((used)) static int FUNC4(struct tty_struct *tty, struct usb_serial_port *port,
			  const u8 *buf, int count)
{
	struct iuu_private *priv = FUNC3(port);
	unsigned long flags;

	if (count > 256)
		return -ENOMEM;

	FUNC1(&priv->lock, flags);

	/* fill the buffer */
	FUNC0(priv->writebuf + priv->writelen, buf, count);
	priv->writelen += count;
	FUNC2(&priv->lock, flags);

	return count;
}