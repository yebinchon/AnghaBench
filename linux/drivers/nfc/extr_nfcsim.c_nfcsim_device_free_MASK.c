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
struct nfcsim {int up; int /*<<< orphan*/  nfc_digital_dev; int /*<<< orphan*/  recv_work; int /*<<< orphan*/  send_work; int /*<<< orphan*/  link_in; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct nfcsim*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct nfcsim *dev)
{
	FUNC4(dev->nfc_digital_dev);

	dev->up = false;

	FUNC5(dev->link_in);

	FUNC0(&dev->send_work);
	FUNC1(&dev->recv_work);

	FUNC3(dev->nfc_digital_dev);

	FUNC2(dev);
}