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
struct usb_gadget {int dummy; } ;
struct m66592 {int /*<<< orphan*/ * driver; } ;

/* Variables and functions */
 int /*<<< orphan*/  M66592_INTENB0 ; 
 int M66592_URST ; 
 int M66592_VBSE ; 
 int /*<<< orphan*/  FUNC0 (struct m66592*) ; 
 int /*<<< orphan*/  FUNC1 (struct m66592*) ; 
 int /*<<< orphan*/  FUNC2 (struct m66592*,int,int /*<<< orphan*/ ) ; 
 struct m66592* FUNC3 (struct usb_gadget*) ; 

__attribute__((used)) static int FUNC4(struct usb_gadget *g)
{
	struct m66592 *m66592 = FUNC3(g);

	FUNC2(m66592, M66592_VBSE | M66592_URST, M66592_INTENB0);

	FUNC1(m66592);
	FUNC0(m66592);

	m66592->driver = NULL;

	return 0;
}