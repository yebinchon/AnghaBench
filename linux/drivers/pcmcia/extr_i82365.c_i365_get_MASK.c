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
typedef  size_t u_short ;
typedef  int /*<<< orphan*/  u_char ;
struct TYPE_2__ {unsigned int ioaddr; int /*<<< orphan*/  psock; } ;

/* Variables and functions */
 size_t FUNC0 (int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  bus_lock ; 
 int /*<<< orphan*/  FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (size_t,unsigned int) ; 
 TYPE_1__* socket ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static u_char FUNC5(u_short sock, u_short reg)
{
    unsigned long flags;
    FUNC3(&bus_lock,flags);
    {
	unsigned int port = socket[sock].ioaddr;
	u_char val;
	reg = FUNC0(socket[sock].psock, reg);
	FUNC2(reg, port); val = FUNC1(port+1);
	FUNC4(&bus_lock,flags);
	return val;
    }
}