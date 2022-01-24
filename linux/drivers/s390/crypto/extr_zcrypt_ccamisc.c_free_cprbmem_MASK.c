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
struct CPRBX {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void*) ; 
 int /*<<< orphan*/  FUNC1 (void*,int) ; 

__attribute__((used)) static void FUNC2(void *mem, size_t paramblen, int scrub)
{
	if (scrub)
		FUNC1(mem, 2 * (sizeof(struct CPRBX) + paramblen));
	FUNC0(mem);
}