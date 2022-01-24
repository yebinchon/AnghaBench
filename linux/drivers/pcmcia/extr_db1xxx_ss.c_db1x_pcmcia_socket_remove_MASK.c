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
struct platform_device {int dummy; } ;
struct db1x_pcmcia_sock {scalar_t__ virt_io; int /*<<< orphan*/  socket; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct db1x_pcmcia_sock*) ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (struct db1x_pcmcia_sock*) ; 
 scalar_t__ mips_io_port_base ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct db1x_pcmcia_sock* FUNC4 (struct platform_device*) ; 

__attribute__((used)) static int FUNC5(struct platform_device *pdev)
{
	struct db1x_pcmcia_sock *sock = FUNC4(pdev);

	FUNC0(sock);
	FUNC3(&sock->socket);
	FUNC1((void *)(sock->virt_io + (u32)mips_io_port_base));
	FUNC2(sock);

	return 0;
}