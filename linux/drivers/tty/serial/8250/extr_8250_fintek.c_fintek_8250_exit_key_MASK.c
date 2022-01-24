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
typedef  scalar_t__ u16 ;

/* Variables and functions */
 scalar_t__ ADDR_PORT ; 
 int /*<<< orphan*/  EXIT_KEY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int) ; 

__attribute__((used)) static void FUNC2(u16 base_port)
{

	FUNC0(EXIT_KEY, base_port + ADDR_PORT);
	FUNC1(base_port + ADDR_PORT, 2);
}