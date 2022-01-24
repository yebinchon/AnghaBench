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
struct port100 {int /*<<< orphan*/  in_urb; } ;
struct nfc_digital_dev {int dummy; } ;

/* Variables and functions */
 struct port100* FUNC0 (struct nfc_digital_dev*) ; 
 int /*<<< orphan*/  FUNC1 (struct port100*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct nfc_digital_dev *ddev)
{
	struct port100 *dev = FUNC0(ddev);

	/* An ack will cancel the last issued command */
	FUNC1(dev);

	/* cancel the urb request */
	FUNC2(dev->in_urb);
}