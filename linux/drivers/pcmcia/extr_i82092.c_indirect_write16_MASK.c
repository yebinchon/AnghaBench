#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {unsigned short io_base; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned char,unsigned short) ; 
 int /*<<< orphan*/  port_lock ; 
 TYPE_1__* sockets ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC3(int socket, unsigned short reg, unsigned short value)
{
	unsigned short int port;
	unsigned char val;
	unsigned long flags;
	FUNC1(&port_lock,flags);
	reg = reg + socket * 0x40;
	port = sockets[socket].io_base; 
	
	FUNC0(reg,port);
	val = value & 255;
	FUNC0(val,port+1);
	
	reg++;
	
	FUNC0(reg,port);
	val = value>>8;
	FUNC0(val,port+1);
	FUNC2(&port_lock,flags);
}