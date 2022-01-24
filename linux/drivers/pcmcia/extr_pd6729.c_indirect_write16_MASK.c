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
 int /*<<< orphan*/  FUNC0 (unsigned char,unsigned long) ; 
 int /*<<< orphan*/  port_lock ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC3(struct pd6729_socket *socket, unsigned short reg,
			     unsigned short value)
{
	unsigned long port;
	unsigned char val;
	unsigned long flags;

	FUNC1(&port_lock, flags);
	reg = reg + socket->number * 0x40;
	port = socket->io_base;

	FUNC0(reg, port);
	val = value & 255;
	FUNC0(val, port + 1);

	reg++;

	FUNC0(reg, port);
	val = value >> 8;
	FUNC0(val, port + 1);
	FUNC2(&port_lock, flags);
}