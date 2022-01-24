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
struct TYPE_2__ {scalar_t__ io_base; } ;

/* Variables and functions */
 int MAX_SOCKETS ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 unsigned int FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 TYPE_1__* sockets ; 

__attribute__((used)) static int FUNC3(int socketno)
{	
	unsigned int val;
	FUNC0("card_present");
	
	if ((socketno<0) || (socketno >= MAX_SOCKETS))
		return 0;
	if (sockets[socketno].io_base == 0)
		return 0;

		
	val = FUNC1(socketno, 1); /* Interface status register */
	if ((val&12)==12) {
		FUNC2("card_present 1");
		return 1;
	}
		
	FUNC2("card_present 0");
	return 0;
}