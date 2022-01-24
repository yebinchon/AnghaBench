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
struct usb_function {int dummy; } ;
struct phonet_port {int /*<<< orphan*/  lock; } ;
struct f_phonet {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct usb_function*) ; 
 struct f_phonet* FUNC1 (struct usb_function*) ; 
 struct phonet_port* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC5(struct usb_function *f)
{
	struct f_phonet *fp = FUNC1(f);
	struct phonet_port *port = FUNC2(fp->dev);
	unsigned long flags;

	/* remain disabled until set_alt */
	FUNC3(&port->lock, flags);
	FUNC0(f);
	FUNC4(&port->lock, flags);
}