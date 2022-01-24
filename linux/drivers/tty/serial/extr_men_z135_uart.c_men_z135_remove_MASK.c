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
struct men_z135_port {scalar_t__ rxbuf; int /*<<< orphan*/  port; } ;
struct mcb_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  line ; 
 struct men_z135_port* FUNC1 (struct mcb_device*) ; 
 int /*<<< orphan*/  men_z135_driver ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct mcb_device *mdev)
{
	struct men_z135_port *uart = FUNC1(mdev);

	line--;
	FUNC2(&men_z135_driver, &uart->port);
	FUNC0((unsigned long) uart->rxbuf);
}