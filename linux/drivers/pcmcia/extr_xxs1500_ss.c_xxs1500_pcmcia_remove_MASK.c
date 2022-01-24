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
typedef  scalar_t__ u32 ;
struct xxs1500_pcmcia_sock {scalar_t__ virt_io; int /*<<< orphan*/  socket; } ;
struct platform_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GPIO_CDA ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct xxs1500_pcmcia_sock*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 
 int /*<<< orphan*/  FUNC3 (struct xxs1500_pcmcia_sock*) ; 
 scalar_t__ mips_io_port_base ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct xxs1500_pcmcia_sock* FUNC5 (struct platform_device*) ; 

__attribute__((used)) static int FUNC6(struct platform_device *pdev)
{
	struct xxs1500_pcmcia_sock *sock = FUNC5(pdev);

	FUNC4(&sock->socket);
	FUNC0(FUNC1(GPIO_CDA), sock);
	FUNC2((void *)(sock->virt_io + (u32)mips_io_port_base));
	FUNC3(sock);

	return 0;
}