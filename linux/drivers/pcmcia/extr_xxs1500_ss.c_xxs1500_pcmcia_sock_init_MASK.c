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
struct pcmcia_socket {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GPIO_BATTDEAD ; 
 int /*<<< orphan*/  GPIO_BATTWARN ; 
 int /*<<< orphan*/  GPIO_CDA ; 
 int /*<<< orphan*/  GPIO_CDB ; 
 int /*<<< orphan*/  GPIO_OUTEN ; 
 int /*<<< orphan*/  GPIO_POWER ; 
 int /*<<< orphan*/  GPIO_RESET ; 
 int /*<<< orphan*/  GPIO_VSH ; 
 int /*<<< orphan*/  GPIO_VSL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC2(struct pcmcia_socket *skt)
{
	FUNC0(GPIO_CDA);
	FUNC0(GPIO_CDB);
	FUNC0(GPIO_VSL);
	FUNC0(GPIO_VSH);
	FUNC0(GPIO_BATTDEAD);
	FUNC0(GPIO_BATTWARN);
	FUNC1(GPIO_RESET, 1);	/* assert reset */
	FUNC1(GPIO_OUTEN, 1);	/* disable buffers */
	FUNC1(GPIO_POWER, 1);	/* power off */

	return 0;
}