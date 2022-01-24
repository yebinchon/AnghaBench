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

/* Variables and functions */
 int /*<<< orphan*/  I365_GBLCTL ; 
 int /*<<< orphan*/  I365_GENCTL ; 
 int /*<<< orphan*/  I365_INTCTL ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

__attribute__((used)) static void FUNC4(int sock)
{
	FUNC0("set_bridge_state");
	FUNC2(sock, I365_GBLCTL,0x00);
	FUNC2(sock, I365_GENCTL,0x00);
	
	FUNC1(sock, I365_INTCTL,0x08);
	FUNC3("set_bridge_state");
}