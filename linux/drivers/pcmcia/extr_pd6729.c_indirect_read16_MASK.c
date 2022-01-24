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
struct pd6729_socket {int number; unsigned long io_base; } ;

/* Variables and functions */
 int FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (unsigned short,unsigned long) ; 
 int /*<<< orphan*/  port_lock ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static unsigned short FUNC4(struct pd6729_socket *socket,
				      unsigned short reg)
{
	unsigned long port;
	unsigned short tmp;
	unsigned long flags;

	FUNC2(&port_lock, flags);
	reg  = reg + socket->number * 0x40;
	port = socket->io_base;
	FUNC1(reg, port);
	tmp = FUNC0(port + 1);
	reg++;
	FUNC1(reg, port);
	tmp = tmp | (FUNC0(port + 1) << 8);
	FUNC3(&port_lock, flags);

	return tmp;
}