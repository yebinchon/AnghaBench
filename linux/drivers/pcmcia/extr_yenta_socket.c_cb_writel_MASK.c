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
typedef  int /*<<< orphan*/  u32 ;
struct yenta_socket {unsigned int base; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,struct yenta_socket*,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,unsigned int) ; 

__attribute__((used)) static inline void FUNC3(struct yenta_socket *socket, unsigned reg, u32 val)
{
	FUNC0("%04x %08x\n", socket, reg, val);
	FUNC2(val, socket->base + reg);
	FUNC1(socket->base + reg); /* avoid problems with PCI write posting */
}