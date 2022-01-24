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
struct usb_tx_sdu {int /*<<< orphan*/  buf; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  SDU_BUF_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct usb_tx_sdu*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct usb_tx_sdu* FUNC2 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct usb_tx_sdu *FUNC3(void)
{
	struct usb_tx_sdu *t_sdu;

	t_sdu = FUNC2(sizeof(*t_sdu), GFP_KERNEL);
	if (!t_sdu)
		return NULL;

	t_sdu->buf = FUNC1(SDU_BUF_SIZE, GFP_KERNEL);
	if (!t_sdu->buf) {
		FUNC0(t_sdu);
		return NULL;
	}

	return t_sdu;
}